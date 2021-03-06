# -*- coding: utf-8 -*-
from app import app, template
import random, string
import pickle
import bottle
import datetime
import os


bottle.TEMPLATE_PATH.insert(0, './app/views')
@app.route('/')
def index():
	data = []
	cookies = bottle.request.get_cookie("qa_token")
	if cookies == None :
		charsForGenerateToken = string.ascii_uppercase + string.digits
		qa_token = ''.join(random.choice(charsForGenerateToken) for i in range(35))
		bottle.response.set_cookie("qa_token", qa_token)
		fileName = 'data_files/data_'+qa_token
		pickle.dump(data, open(fileName, 'wb'))
		print("FILE: "+fileName)
	else :
		print(cookies)
		fileName = 'data_files/data_'+cookies
		try:
			new_data = pickle.load(open(fileName, 'rb'))
			for i in new_data :
				data.append(i)
				print(i)
			pickle.dump(data, open(fileName, 'wb'))
		except:
			pickle.dump(data, open(fileName, 'wb'))
			
	return bottle.template('index')

	
@app.route('/api_test')
def api_test():
    return bottle.template('api_test')
	
@app.route('/form_test/profile_form')
def form_test():
    return bottle.template('profile_form')
	
@app.route('/bugtracker')
def api_test():
	try:
		cookies = bottle.request.get_cookie("qa_token")
		fileName = 'data_files/data_'+cookies
		data = pickle.load(open(fileName, 'rb'))
	except:
		index()
		cookies = bottle.request.get_cookie("qa_token")
		fileName = 'data_files/data_'+cookies
		data = pickle.load(open(fileName, 'rb'))
	return bottle.template('bugtracker', data = data)
	
	
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
		
@app.route('/api_test/send', method = 'POST')
def sendRequest():
	typeReq = bottle.request.forms.get("type")
	print("TYPE REQ: " + typeReq)
	url = bottle.request.forms.get("apiurl")
	print("URL: " + url)
	auth = bottle.request.forms.get("auth")
	session = bottle.request.forms.get("session")
	content = bottle.request.forms.get("content")
	bodyType = bottle.request.forms.get("btype")
	body = bottle.request.forms.get("body")
	if typeReq != "Post" :
		return "<script>alert('UnexpectedError | Request method not supported'); history.back();</script>"
	elif url != "http://qa-env.com/api/test/getPaymentRestrictions" :
		return "<script>alert('UnexpectedError | 404 Not Found'); history.back();</script>"
	elif auth != "Basic d2LK55sds454dV4OnBhc3M=" :
		return "<script>alert('Unauthorized | Access denied'); history.back();</script>"
	elif bodyType != "json" :
		return "<script>alert('415 | Unsupported Media Type'); history.back();</script>"
	else :
		return "<script>alert('OK'); history.back();</script>"

@app.route('/bugtracker/create', method='POST')
def create():
	token = bottle.request.get_cookie("qa_token")
	print(token)
	project = bottle.request.forms.get("project")
	issue_type = bottle.request.forms.get("issue_type")
	summary = bottle.request.forms.get("summary")
	priority = bottle.request.forms.get("priority")
	author = bottle.request.forms.get("author")
	description = bottle.request.forms.get("description")
	assigned = bottle.request.forms.get("assigned")
	issue = {'project':project,'issue_type':issue_type,
			'summary':summary, 'priority':priority,
			'author':author, 'description':description,
			'assigned':assigned}
	fileName = 'data_files/data_'+token
	data = pickle.load(open(fileName, 'rb'))
	data.append(issue)
	pickle.dump(data, open(fileName, 'wb'))
	print(description)
	print(project)
	print(issue_type)
	print(priority)
	print(author)
	return '<script>alert("Issue created successfull"); document.location.href="/bugtracker";</script>'

	
@app.route('/verifyresult')	
def verifyResult():
	results = []
	listOfResultsFiles = os.listdir("data_files")
	print(listOfResultsFiles)
	for fileName in listOfResultsFiles :
		data = pickle.load(open("data_files/"+fileName, 'rb'))
		results.append(data)
	return bottle.template('verify_result', results = results)
	
@app.route('/verifyresult/clear', method='POST')
def clearresult():
	folder = "data_files"
	for file in os.listdir(folder) :
		file_path = os.path.join(folder, file)
		try:
			if os.path.isfile(file_path) :
				os.unlink(file_path)
		except:
			continue
	return '<script>alert("All results deleted"); document.location.href="/verifyresult";</script>'
		
@app.route('/payment-form/deposit', method='POST')
def deposit():
	cardHolder = bottle.request.forms.get('cardHolder')
	return bottle.template('deposit.tpl', cardHolder = cardHolder)
	
	
	

