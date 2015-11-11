from bottle import route,request,static_file,run
import sqlite3

#static files

@route('/')
@route('')
def home():
	return static_file('main.html','.')

#main css file
@route('/main_css')
def main_css():
	return static_file('main.css',root="/home/jesuis/jesuis/assets/css/")

#main css file
@route('/main_main_css')
def main_css():
	return static_file('main_main.css',root="/home/jesuis/jesuis/assets/css/")

#css for create a new
@route('/create_css')
def create_css():
    return static_file('create.css',root="/home/jesuis/jesuis/assets/css/")

#ie9 css
@route('/ie9')
def ie9():
	return static_file('ie9.css',root="/home/jesuis/jesuis/assets/css/")

#ie8 css
@route('/ie8')
def ie8():
	return static_file('ie8.css',root="/home/jesuis/jesuis/assets/css/")

#respond js
@route('/respond')
def respond():
	return static_file('respond.min.js',root="/home/jesuis/jesuis/assets/js/")

#noscript css
@route('/noscript')
def noscript():
	return static_file('noscript.css',root="/home/jesuis/jesuis/assets/css/")

#overlay png
@route('/overlay')
def overlay():
	return static_file('overlay.png',root="/home/jesuis/jesuis/assets/css/images/")

#bg jpg
@route('/bg')
def bg():
	return static_file('bg.jpg',root="/home/jesuis/jesuis/images/")

#bg jpg
@route('/jesuis_bg')
def bg():
	return static_file('home_bg.jpg',root="/home/jesuis/jesuis/images/")

#all urls from here
@route('/<url_name>')
def display(url_name):
	conn = sqlite.connect('/home/jesuis/jesuis/atad/database.db')
	c = conn.cursor()
	c.execute('SELECT * FROM user WHERE url_name = ?',(url_name,))
	r = c.fetchone()
	if r == None:
		return redirect("/create")

	else:
		id = r[0]
		url_name = r[1]#1
		name = r[2]#2
		email = r[3]#3
		website  = r[4]#4
		phone = r[5]#5
		job  = r[6]#6
		photo = r[7]#7
		facebook = r[8]#8
		twitter = r[9]#9
		linkedin = r[10]#10
		instagram = r[11]#11
		return template('/home/jesuis/jesuis/thistemplateisforhomepage.tpl',id = id,name = name,job = job, phone = phone, website = website, photo = photo, facebook = facebook, twitter = twitter, linkedin = linkedin, instagram = instagram,email = email,count=0)

@route('/create')
def create():
	return "Hello here you will create create page here!"

application = default_app()