from flask import Flask, jsonify


app = Flask(__name__)


@app.route('/')
def system_information():
    return jsonify({"service" : "beacon-webserver"})
