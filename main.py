import datetime
from flask import request, jsonify, Flask

app = Flask(__name__)

@app.route("/", methods=["GET"])
def main():
    return {
        "timestamp": datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
        "ip": request.remote_addr
        }


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)