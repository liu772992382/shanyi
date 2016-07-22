#!/usr/bin/env python
#coding=utf8

import os
import json
import requests
from flask import Flask, request, render_template, redirect,make_response, flash, session , g ,url_for, jsonify
from datetime import datetime
from model import *
import time
from functools import wraps

def login_required(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        if 'username' not in session:
            return redirect('/shanyi/login')
        return func(*args, **kwargs)
    return wrapper

def get_time():
	return time.strftime("%Y-%m-%d %X", time.localtime())


@app.route('/shanyi/login',methods = ['GET','POST'])
def login():
	if request.method == 'GET':
		return render_template('Login.html')
	elif request.method == 'POST':
		login_user = request.form.get('username')
		print 1
		login_password = request.form.get('password')
		print 2
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


@app.route('/shanyi/heartwords',methods = ['GET'])
@login_required
def get_HeartWords():
	info = db.session.query(HeartWord).order_by(HeartWord.likes.desc()).all()
	user_name = []
	user_avatar = []
	for i in info:
		user0 = db.session.query(User).filter_by(uid = i.uid).first()
		user_name.append(user0.username)
		user_avatar.append(user0.avatar)
	return render_template('HeartWords.html',info  = info,user_name = user_name,user_avatar = user_avatar,heartwords = True,title = u'心语')


@app.route('/shanyi/heartwords/delete',methods = ['POST'])
@login_required
def heartwords_delete():
	delete_id = request.form.get('delete_id')
	if delete_id == None:
		return 'error'
	else:
		delete_item = db.session.query(HeartWord).filter_by(hwid = delete_id).first()
		if delete_item == None:
			return 'error'
		else:
			db.session.delete(delete_item)
			db.session.commit()
			return 'success'


@app.route('/shanyi/heartwords/star',methods = ['POST'])
def heartwords_star():
	star_id = request.form.get('star_id')
	if star_id == None:
		return 'error'
	else:
		star_item = db.session.query(HeartWord).filter_by(hwid = star_id).first()
		if star_item == None:
			return 'error'
		else:
			star_item.star = 1#0 if star_item else 1
			db.session.commit()
			return 'success'



@app.route('/shanyi/dailytasks',methods = ['GET','POST'])
@login_required
def daily_tasks():
    if request.method == 'GET':
        daily_task = db.session.query(DailyTask).all()
        return render_template('DailyTasks.html',tasks = True,daily_task = daily_task,title = u'日常任务')
    elif request.method == 'POST':
        try:
            task_form = request.form
            for i in task_form:
                if task_form[i] == '':
                    return 'error'
            taskdata = DailyTask()
            taskdata.title = task_form['title']
            taskdata.desc = task_form['desc']
            taskdata.content = task_form['content']
            taskdata.image = task_form['image']
            taskdata.label = int(task_form['label'])
            taskdata.target = int(task_form['target'])
            taskdata.date = get_time()
            db.session.add(taskdata)
            db.session.commit()
            return 'success'
        except:
            return 'error'
    else:
        return 'error'


@app.route('/shanyi/task/<int:dtid>',methods = ['GET'])
def task(dtid):
    ctask = db.session.query(DailyTask).filter_by(dtid = dtid).first()
    comment = db.session.query(DailyTaskComment).filter_by(dtid = dtid).all()
    for i in comment:
        user0 = db.session.query(User).filter_by(uid = i.uid).first()
        i.name = user0.username
        i.avatar = user0.avatar
    return render_template('Task.html',ctask = ctask,title = u'任务详情',comment = comment,tasks = True)


@app.route('/shanyi/task/delete',methods = ['POST'])
def task_delete():
    try:
        deletedata = request.form
        delete_item = db.session.query(DailyTask).filter_by(dtid = deletedata['dtid']).first()
        db.session.delete(delete_item)
        db.session.commit()
        return 'success'
    except:
        return 'error'


@app.route('/shanyi/news',methods = ['GET','POST'])
@login_required
def news():
    if request.method == 'GET':
        return render_template('News.html',news = True,title = u'新闻')
    elif request.method == 'POST':
        try:
            news_form = request.form
            for i in news_form:
                if news_form[i] == '':
                    return 'error'
            newsdata = News()
            newsdata.title = news_form['title']
            newsdata.subtitle = news_form['subtitle']
            newsdata.image = news_form['image']
            newsdata.source = news_form['source']
            newsdata.content = news_form['content']
            newsdata.type = news_form['type']
            newsdata.city = int(news_form['city'])
            newsdata.datetime = get_time()
            db.session.add(newsdata)
            db.session.commit()
            return 'success'
        except:
            return 'error'
    else:
        return 'error'


@app.route('/shanyi/manage',methods = ['GET'])
def manage():
    return render_template('Manage.html',title = u'管理中心',manage = True)


@app.route('/shanyi/prize',methods = ['GET','POST'])
@login_required
def prize():
    if request.method == 'GET':
        return render_template('Prize.html',title = u'发布奖品',manage = True)
    elif request.method == 'POST':
        try:
            prize_form = request.form
            for i in prize_form:
                if prize_form[i] == '':
                    return 'error'
            # '' in prize_form.values
            prizedata = Prize()
            prizedata.title = prize_form['title']
            prizedata.content = prize_form['content']
            prizedata.provider = prize_form['provider']
            prizedata.cover = prize_form['cover']
            prizedata.round_img = prize_form['round_img']
            prizedata.image = prize_form['image']
            prizedata.cost = int(prize_form['cost'])
            prizedata.datetime = get_time()
            db.session.add(prizedata)
            db.session.commit()
            return 'success'
        except:
            return 'error'
    else:
        return 'error'


@app.route('/shanyi/users',methods = ['GET','POST'])
@login_required
def users():
	if request.method == 'GET':
		users = db.session.query(User).order_by(User.level.desc()).all()
		return render_template('Users.html',users = users,title = u'用户')
	elif request.method == 'POST':
		user_form = request.form
		if user_form['action'] == 'freeze':
			freeze_user = db.session.query(User).filter_by(uid = user_form['uid']).first()
			if freeze_user.freeze == 1:
				freeze_user.freeze = 0
			else:
				freeze_user.freeze = 1
			db.session.commit()
			return 'success'
		elif user_form['action'] == 'delete':
			delete_user = db.session.query(User).filter_by(uid = user_form['uid']).first()
			db.session.delete(delete_user)
			db.session.commit()
			return 'success'
		else:
			return 'error'
	else:
		return 'error'


@app.route('/shanyi/systemmessage',methods = ['GET','POST'])
@login_required
def systemmessage():
    if request.method == 'GET':
        return render_template('SystemMessage.html')
    elif request.method == 'POST':
        try:
            system_form = requests.form
            systemdata = SystemMessage()
            systemdata.content = system_form['content']
            systemdata.type = system_form['type']
            systemdata.datetime = get_time()
            db.session.add(systemdata)
            db.session.commit()
            return 'success'
        except:
            return 'error'
    else:
        return 'error'


@app.route('/shanyi/managetask',methods = ['GET'])
def managetask():
    return render_template('ManageTasks.html',title = u'发布日常任务',manage = True)


if __name__ == "__main__":
	app.run(host='0.0.0.0',port=8888, debug=True)
