#!/usr/bin/python3
"""
a script that starts a Flask web application
"""


from flask import Flask

app = Flask(__name__)


@app.route("/", strict_slashes=False)
def Hello_HBNB():
    return "Hello HBNB!"


@app.route("/hbnb", strict_slashes=False)
def HBNB():
    return "HBNB"


@app.route("/c/<text>", strict_slashes=False)
def variable(text):
    text = text.replace('_', ' ')
    return f'C {text}'


@app.route("/python/", strict_slashes=False)
@app.route("/python/<text>/", strict_slashes=False)
def python_text(text='is cool'):
    text = text.replace('_', ' ')
    return f'Python {text}'


@app.route("/number/<int:n>", strict_slashes=False)
def is_int(n):
    if isinstance(n, int):
        return f'{n} is a number'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
