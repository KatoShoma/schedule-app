from websocket_server import WebsocketServer
from datetime import datetime
import time
import logging
import json

from user_manager.User_manager import User_manager

# def new_client(client, server):
#     while True:
#         time.sleep(1)
#         message = str(user_manager.get_complate_counter())
#         server.send_message_to_all(message)

# # クライアントからメッセージを受信したときに呼ばれる関数
# def message_received(client, server, message):
#     print('aaaaa')
#     print(message)
#     # increment
#     user_manager.increment_complate_counter()
#     message = str(user_manager.get_complate_counter())
#     server.send_message_to_all(message)

# # # クライアントからメッセージを受信したときに呼ばれる関数
# # def message_received(client, server, message):
# #     print("client({}) said: {}".format(client['id'], message))
# #     # 全クライアントにメッセージを送信
# #     #server.send_message_to_all(message)

# user_manager = User_manager()
# server = WebsocketServer(80, host="0.0.0.0", loglevel=logging.INFO)
# server.set_fn_new_client(new_client)
# server.set_fn_message_received(message_received)
# print('start')
# server.run_forever()

class Websocket_Server():

    def __init__(self, host, port):
        self.server = WebsocketServer(port, host=host, loglevel=logging.DEBUG)
        self.user_manager = User_manager()

    # クライアント接続時に呼ばれる関数
    def new_client(self, client, server):
        print("new client connected and was given id {}".format(client['id']))
        # 全クライアントにメッセージを送信
        # get cnt
        comp_cnt = self.user_manager.get_complate_counter()
        user_cnt = self.user_manager.get_user_counter()
        # to json
        cnt_json = {
            'comp_cnt':str(comp_cnt),
            'user_cnt':str(user_cnt),
        }
        cnt_json = json.dumps(cnt_json)
        print(cnt_json)
        # 全クライアントにメッセージを送信
        self.server.send_message_to_all(cnt_json)


    # クライアント切断時に呼ばれる関数
    def client_left(self, client, server):
        print("client({}) disconnected".format(client['id']))

    # クライアントからメッセージを受信したときに呼ばれる関数
    def message_received(self, client, server, message):
        print(f'Debug : {message}')
        # messageで条件分岐
        if message == 'comp':
            # increment
            self.user_manager.increment_complate_counter()
        elif message == 'user':
            # increment
            self.user_manager.increment_user_counter()
        else:
            return
        # get cnt
        comp_cnt = self.user_manager.get_complate_counter()
        user_cnt = self.user_manager.get_user_counter()
        # to json
        cnt_json = {
            'comp_cnt':str(comp_cnt),
            'user_cnt':str(user_cnt),
        }
        cnt_json = json.dumps(cnt_json)
        print(cnt_json)
        # 全クライアントにメッセージを送信
        self.server.send_message_to_all(cnt_json)
    
    # サーバーを起動する
    def run(self):
        # クライアント接続時のコールバック関数にself.new_client関数をセット
        self.server.set_fn_new_client(self.new_client)
        # クライアント切断時のコールバック関数にself.client_left関数をセット
        self.server.set_fn_client_left(self.client_left)
        # メッセージ受信時のコールバック関数にself.message_received関数をセット
        self.server.set_fn_message_received(self.message_received) 
        self.server.run_forever()

IP_ADDR = "0.0.0.0" # IPアドレスを指定
PORT=80 # ポートを指定
ws_server = Websocket_Server(IP_ADDR, PORT)
ws_server.run()