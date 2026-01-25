from flask import Flask, jsonify
from app.math_utils import add

app = Flask(__name__)

@app.route("/health")
def health():
    return jsonify(status="ok")

@app.route("/add/<int:a>/<int:b>")
def add_numbers(a, b):
    return jsonify(result=add(a, b))

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8085)
