from flask import Flask, render_template
import time

app = Flask(__name__)

start = int(round(time.time()))

@app.route("/")
def test_project():
    return render_template("index.html")

@app.route("/data")
def test_project_data():
    return render_template("data.html")  

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=int(8080), debug=False)