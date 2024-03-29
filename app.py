from flask import Flask, render_template
import time
import os
from dbconnection import get_data as gd 
from tabulate import tabulate

app = Flask(__name__)

start = int(round(time.time()))

@app.route("/")
def test_project():
    return render_template("index.html")

@app.route("/api")
def get_data():
    return tabulate(gd(), headers=["Name","Skill", "Level", "Date"], tablefmt="psql")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=int(8080), debug=False)