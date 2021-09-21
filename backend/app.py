import json
import datetime
import time

from gevent.pywsgi import WSGIServer
from geventwebsocket.handler import WebSocketHandler
from flask import Flask, request, render_template

from user_manager.User_manager import User_manager

### Nishiyama lib

from scheduler.scheduler_algorithm import SchedulerAlgorithm
from scheduler.scheduler_algorithm import scheduler_into_percent


app = Flask(__name__)
app.config.from_object(__name__)
user_manager = User_manager()

@app.route('/scheduler',methods=["POST"])
def run_scheduler():

    json_dict = request.json
    print(f'[Debug Msg] input_json:{json_dict}')

    user_planning_time = json_dict['times']
    users_tasks = json_dict['tasks']

    scheduler = SchedulerAlgorithm(user_planning_time, users_tasks)
    todo_task, giveup_task = scheduler.simple_algorithm()
    user_planning_time = scheduler_into_percent(todo_task, user_planning_time)

    results = {}
    results['todo_task'] = todo_task
    results['give_up'] = giveup_task
    results['user_planning_time'] = user_planning_time

    with open('./output_template.json', 'w') as fp:
        json.dump(results, fp)

    return results

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