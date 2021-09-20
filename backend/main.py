from flask import Flask
from scheduler import scheduler
from user_manager import User_manager


app = Flask(__name__)

@app.route('/',methods=["GET"])
def run_server():
    global scheduler = scheduler()
    global user_manager = User_manager()

@app.route('/scheduler',methods=["POST"])
def run_scheduler():
    return hoge

@app.route('/user_manager',methods=["POST"])
def run_user_manager():
    user_manager.increment_counter()
    return user_manager.get_counter()

if __name__ == "__main__":
    app.run(debug=False, host='0.0.0.0', port='80')