from app import app, template
import bottle
import datetime

bottle.TEMPLATE_PATH.insert(0, './app/views')
@app.route('/')
def index():
    message = "Automated-testing.info"
    now_time = datetime.datetime.now()
    cur_hour = now_time.hour
    return bottle.template('index')
	
@app.route('/api_test')
def api_test():
    return bottle.template('api_test')
	
@app.route('/form_test/profile_form')
def form_test():
    return bottle.template('profile_form')
	
@app.route('/bugtracker')
def api_test():
    return bottle.template('bugtracker')
	
@app.route('/form_test/pay_form')
def api_test():
    return bottle.template('pay_form')
	
@app.route('/form_test/contact_form')
def api_test():
    return bottle.template('contact_form')
	
@app.route('/static/<filename>')
def server_static(filename):
    return bottle.static_file(filename,
                       root='app/static')
					   
@app.route('/static/js/<filename>')
def get_js(filename):
    return bottle.static_file(filename,
                       root='app/static/js')

@app.route('/images/<filename>')
def send_image(filename):
    return bottle.static_file(filename,
                       root='app/images',
                       mimetype='image/png')
					   
@app.error(404)
def mistake_404(code):
    return bottle.template('error_page', statusCode='404')
	
@app.error(403)
def mistake_403(code):
    return bottle.template('error_page', statusCode='403')
	
@app.route('/register_submit', method='POST')
def register():
	password = bottle.request.forms.get("password")
	retryPass = bottle.request.forms.get("retryPass")
	if password != retryPass :
		return '<script>alert("Пароли не совпадают"); history.back();</script>'
	else :
		return '<script>alert("Unexpected Error");</script>'


