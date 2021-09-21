import json
import datetime
import time

from gevent.pywsgi import WSGIServer
from geventwebsocket.handler import WebSocketHandler
from flask import Flask, request, render_template

from user_manager.User_manager import User_manager


app = Flask(__name__)
app.config.from_object(__name__)
user_manager = User_manager()

@app.route('/scheduler',methods=["POST"])
def run_scheduler():
    return 'scheduler'

@app.route('/user_manager_increment',methods=["POST"])
def user_manager_increment():
    user_manager.increment_counter()

@app.route('/pipe')
def pipe():
    if request.environ.get('wsgi.websocket'):
        ws = request.environ['wsgi.websocket']
        while True:
            time.sleep(1)
            message = ws.receive()
            if message is None:
                break
            else:
                print(message)
            # 1回追加
            user_manager.increment_complate_counter()
            ws.send(get_complate_counter())
    return

@app.route('/',methods=["GET"])
def run():
    return 'ようこそ'

if __name__ == '__main__':
    app.debug = True

    host = '0.0.0.0'
    port = 80
    host_port = (host, port)

    server = WSGIServer(
        host_port,
        app,
        handler_class=WebSocketHandler
    )
    server.serve_forever()