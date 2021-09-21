from websocket_server import WebsocketServer
from datetime import datetime
import time

from user_manager.User_manager import User_manager

def new_client(client, server):
    while True:
        time.sleep(1)
        message = str(user_manager.get_complate_counter())
        server.send_message_to_all(message)

# # クライアントからメッセージを受信したときに呼ばれる関数
# def message_received(client, server, message):
#     print('aaaaa')
#     print(message)
#     # increment
#     user_manager.increment_complate_counter()
#     message = str(user_manager.get_complate_counter())
#     server.send_message_to_all(message)

# クライアントからメッセージを受信したときに呼ばれる関数
def message_received(client, server, message):
    print("client({}) said: {}".format(client['id'], message))
    # 全クライアントにメッセージを送信
    server.send_message_to_all(message)

user_manager = User_manager()
server = WebsocketServer(80, host="0.0.0.0")
server.set_fn_new_client(new_client)
server.set_fn_message_received(message_received)
print('start')
server.run_forever()