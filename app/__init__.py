from bottle import Bottle, run, template, static_file, error

app = Bottle()
from app import routes
