from flask import Flask, request
app = Flask(__name__)

@app.route('/')
def hello_world():
    ip_address = request.remote_addr
    host = request.host
    return "It's working!\nYou are " + ip_address + "\nI'm " + host + "\n"
