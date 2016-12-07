#!/usr/bin/env python
#coding=utf8

import os
import hashlib
import json
import requests
from flask import Flask, request, render_template, redirect,make_response, flash, session , g ,url_for, jsonify
from datetime import datetime
from model import *
import time
from functools import wraps

UPLOAD_FOLDER = 'static/img/upload/'



def hashimage(upfile):
    fname = upfile.filename
    a = fname[:fname.rfind('.')].encode('utf8') + str(time.time())
    ha=hashlib.md5()
    ha.update(a)
    c = str(ha.hexdigest()) + fname[fname.rfind('.'):]
    upfile.save(os.path.join(UPLOAD_FOLDER, c))
    return 'http://139.196.187.155:8888/static/img/upload/' + c

#登陆验证及获取时间函数
#-------------------------------------------------------------------------------
def login_required(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        if 'username' not in session:
            return redirect('/shanyi/login')
        return func(*args, **kwargs)
    return wrapper

def get_time():
	return time.strftime("%Y-%m-%d %X", time.localtime())



#登陆及登出操作
#-------------------------------------------------------------------------------
@app.route('/shanyi/login',methods = ['GET','POST'])
def login():
	if request.method == 'GET':
		return render_template('Login.html')
	elif request.method == 'POST':
		login_user = request.form.get('username')
		login_password = request.form.get('password')
		if login_user == ADMIN_USERNAME and login_password == ADMIN_PASSWORD:
			session['username'] = ADMIN_USERNAME
			return 'success'
		else:
			return 'error'


@app.route('/shanyi/logout',methods = ['GET'])
@login_required
def logout():
	if session['username']:
		session.pop('username',None)
		return 'success'
	else:
		return 'error'

@app.route('/',methods = ['GET'])
def index():
    return redirect('/heartwords')

#心语查看 删除 加精
#-------------------------------------------------------------------------
@app.route('/',methods = ['GET'])
# @login_required
def get_HeartWords():
	info = db.session.query(HeartWord).filter_by(type = 0).order_by(HeartWord.datetime.desc()).all()
	for i in info:
		user0 = db.session.query(User).filter_by(uid = i.uid).first()
		i.nickname = user0.nickname
		i.avatar = user0.avatar

	return render_template('HeartWords.html',info  = info,heartwords = True,title = u'心语')


@app.route('/mercy',methods = ['GET'])
# @login_required
def get_mercy():
	info = db.session.query(HeartWord).filter_by(type = 1).order_by(HeartWord.datetime.desc()).all()
	for i in info:
		user0 = db.session.query(User).filter_by(uid = i.uid).first()
        	i.images = db.session.query(HeartWordImage).filter_by(hwid = i.hwid).all()
		i.nickname = user0.nickname
		i.avatar = user0.avatar

	return render_template('Mercy.html',info  = info,mercy = True,title = u'行善')


@app.route('/share',methods = ['GET'])
# @login_required
def share():
	info = db.session.query(HeartWord).filter_by(type = 0).order_by(HeartWord.datetime.desc()).all()
	for i in info:
		user0 = db.session.query(User).filter_by(uid = i.uid).first()
		i.nickname = user0.nickname
		i.avatar = user0.avatar

	return render_template('Share.html',info  = info,share = True,title = u'分享')

@app.route('/share/<s_type>/<int:sid>', methods = ['GET'])
def share_info(s_type, sid):
    info = db.session.query(HeartWord).filter_by(hwid = sid).order_by(HeartWord.datetime.desc()).first()
    comments = db.session.query(HeartWordComment).filter_by(hwid = sid).order_by(HeartWordComment.datetime.desc()).all()

    user0 = db.session.query(User).filter_by(uid = info.uid).first()
    info.nickname = user0.nickname
    info.avatar = user0.avatar
    if info.type == 1:
        info.images = db.session.query(HeartWordImage).filter_by(hwid =info.hwid).all()
    for i in comments:
        user0 = db.session.query(User).filter_by(uid = i.uid).first()
        i.name = user0.username
        i.avatar = user0.avatar
    return render_template('Share_hw.html', info = info, share = True, comments = comments, title = u'善意分享')

@app.route('/share/hw/<int:sid>', methods = ['GET'])
def share_hw(sid):
    info = db.session.query(HeartWord).filter_by(hwid = sid).order_by(HeartWord.datetime.desc()).first()
    comments = db.session.query(HeartWordComment).filter_by(hwid = sid).order_by(HeartWordComment.datetime.desc()).all()
    if info != None:
        user0 = db.session.query(User).filter_by(uid = info.uid).first()
        info.nickname = user0.nickname
        info.avatar = user0.avatar
        if info.type == 1:
            info.images = db.session.query(HeartWordImage).filter_by(hwid =info.hwid).all()
        for i in comments:
            user0 = db.session.query(User).filter_by(uid = i.uid).first()
            i.name = user0.username
            i.avatar = user0.avatar
    return render_template('Share_hw.html', info = info, share = True, comments = comments, title = u'善意分享')

@app.route('/shanyi/select',methods = ['GET'])
def managetask():
    return render_template('Select.html',title = u'选择',manage = True)

if __name__ == "__main__":
	app.run(host='0.0.0.0',port=8080, debug=True)
