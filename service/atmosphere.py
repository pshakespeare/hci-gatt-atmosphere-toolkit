from flask import Flask, jsonify


app = Flask(__name__)


@app.route('/')
def system_information():
    return jsonify({"service" : "beacon-webserver"})



if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
