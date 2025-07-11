from flask import Flask, request, jsonify
import datetime

app = Flask(__name__)

@app.route('/')
def get_time_and_ip():
    timestamp = datetime.datetime.now().isoformat()
    ip = request.remote_addr
    return jsonify({"timestamp": timestamp, "ip": ip})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)
