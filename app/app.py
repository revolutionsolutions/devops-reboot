from flask import Flask, jsonify
import os

app = Flask(__name__)


@app.route("/health")
def health():
    return jsonify({
        "status": "healthy"
    })


@app.route("/version")
def version():
    return jsonify({
        "version": "1.0.0"
    })


@app.route("/environment")
def environment():
    return jsonify({
        "environment": os.getenv("APP_ENV", "unknown")
    })


@app.route("/")
def home():
    return jsonify({
        "application": "DevOps Reboot API",
        "message": "Application is running"
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

