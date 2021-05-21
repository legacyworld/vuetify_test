from flask import Flask, jsonify, request, make_response,send_from_directory
import requests
import json

app = Flask('test')
@app.route('/api/v1/get/',methods=['GET'])
def get():
    return "Read Data from Flask",200