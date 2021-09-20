from flask import Flask

app = Flask(__name__)

@app.route('/',methods=["GET"])
def hello1():
    print("GET通信です。")
    return "hello"

@app.route('/',methods=["POST"])
def hello2():
    print("POST通信です。")
    return "hello"

@app.route('/test1',methods=["GET"])
def hello3():
    print("GET通信です。")
    return "hello"

if __name__ == "__main__":
    app.run(debug=False, host='0.0.0.0', port='80')