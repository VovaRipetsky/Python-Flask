from flask import Flask
import socket
app = Flask(__name__)

@app.route('/')
def hello_world():
    host = socket.getfqdn()
    addr = socket.gethostbyname(host)
    return 'Server IP is: %(ip)s' % {'ip': addr}

@app.route("/<username>")
def index(username):
    return "Hello, %s!" % username


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80) 


