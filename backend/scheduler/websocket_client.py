import websocket
try:
    import thread
except ImportError:
    import _thread as thread
import time

class Websocket_Client():
    
    def __init__(self, host_addr):

        # デバックログの表示/非表示設定
        websocket.enableTrace(True)

        # WebSocketAppクラスを生成
        # 関数登録のために、ラムダ式を使用
        self.ws = websocket.WebSocketApp(host_addr,
            on_message = lambda ws, msg: self.on_message(ws, msg),
            on_error   = lambda ws, msg: self.on_error(ws, msg),
            on_close   = lambda ws: self.on_close(ws))
        self.ws.on_open = lambda ws: self.on_open(ws)

    # メッセージ受信に呼ばれる関数
    def on_message(self, ws, message):
        print("receive : {}".format(message))

    # エラー時に呼ばれる関数
    def on_error(self, ws, error):
        print(error)

    # サーバーから切断時に呼ばれる関数
    def on_close(self, ws):
        print("### closed ###")

    # サーバーから接続時に呼ばれる関数
    def on_open(self, ws):
        thread.start_new_thread(self.run, ())

    # サーバーから接続時にスレッドで起動する関数
    def run(self, *args):
        while True:
            time.sleep(0.1)
            input_data = input("send data:") 
            self.ws.send(input_data)
    
        self.ws.close()
        print("thread terminating...")
    
    # websocketクライアント起動
    def run_forever(self):
        self.ws.run_forever()