from flask import Flask, jsonify, request, make_response,send_from_directory
import requests
import json

app = Flask('test')
@app.route('/api/v1/get/',methods=['GET'])
def getShare():
    with open('./sample.json') as f:
        d = json.load(f)
    return jsonify(d),200