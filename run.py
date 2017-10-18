#!bottle/bin/python

from app import app
from bottle import PasteServer
from paste import httpserver
#app.run(host='0.0.0.0', port=5050, reloader=True)
app.run(server = PasteServer('0.0.0.0', '8080'))
