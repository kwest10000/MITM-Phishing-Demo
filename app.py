
# import flask
from flask import Flask, render_template


# create an app instance
app = Flask(__name__)


# create a route /
@app.route("/")               
def phish():
   return render_template("home.html")
   

# on running python app.py
if __name__ == "__main__": 
    app.run(host ='0.0.0.0', port = 5002, debug = True) 