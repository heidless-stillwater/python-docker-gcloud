from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_geek():
    return '<h1>Hello from Flask & Docker</h2>'

if __name__ == "__main__":
    app.run(port=3003, debug=True)
#   app.run(host='0.0.0.0', port=3003, debug=True) # starts the web app at port 3003
