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
    a = fname[:fname.rfind('.')].encode('utf8')
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

#心语查看 删除 加精
#-------------------------------------------------------------------------------
@app.route('/shanyi/heartwords',methods = ['GET'])
@login_required
def get_HeartWords():
	info = db.session.query(HeartWord).filter_by(star=0).filter_by(type = 0).order_by(HeartWord.datetime.desc()).all()
	for i in info:
		user0 = db.session.query(User).filter_by(uid = i.uid).first()
		i.nickname = user0.nickname
		i.avatar = user0.avatar
	info_star = db.session.query(HeartWord).filter_by(star=1).filter_by(type = 0).order_by(HeartWord.datetime.desc()).all()
	for i in info_star:
		user1 = db.session.query(User).filter_by(uid = i.uid).first()
		i.nickname = user1.nickname
		i.avatar = user1.avatar
	return render_template('HeartWords.html',info  = info,info_star = info_star,heartwords = True,title = u'心语')


@app.route('/shanyi/mercy',methods = ['GET'])
@login_required
def get_mercy():
	info = db.session.query(HeartWord).filter_by(star=0).filter_by(type = 1).order_by(HeartWord.datetime.desc()).all()
	for i in info:
		user0 = db.session.query(User).filter_by(uid = i.uid).first()
        	i.images = db.session.query(HeartWordImage).filter_by(hwid = i.hwid).all()
		i.nickname = user0.nickname
		i.avatar = user0.avatar
	info_star = db.session.query(HeartWord).filter_by(star=1).filter_by(type = 1).order_by(HeartWord.datetime.desc()).all()
	for i in info_star:
		user1 = db.session.query(User).filter_by(uid = i.uid).first()
        	i.images = db.session.query(HeartWordImage).filter_by(hwid = i.hwid).all()
		i.nickname = user1.nickname
		i.avatar = user1.avatar
	return render_template('Mercy.html',info  = info,info_star = info_star,mercy = True,title = u'行善')



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
        user = db.session.query(User).filter_by(uid = delete_item.uid).first()
        user.points -= 10
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

#用户查看 冻结 删除
#-------------------------------------------------------------------------------
@app.route('/shanyi/users',methods = ['GET','POST'])
@login_required
def users():
	if request.method == 'GET':
		users = db.session.query(User).filter_by(freeze=0).order_by(User.level.desc()).all()
		users_freeze = db.session.query(User).filter_by(freeze=1).order_by(User.level.desc()).all()
		return render_template('Users.html',users = users,title = u'用户',users_freeze = users_freeze,user = True)
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

#日常任务查看 详细信息 删除
#-------------------------------------------------------------------------------
@app.route('/shanyi/dailytasks',methods = ['GET','POST'])
@login_required
def daily_tasks():
    if request.method == 'GET':
        daily_task = db.session.query(DailyTask).all()
        return render_template('DailyTasks.html',tasks = True,daily_task = daily_task,title = u'日常任务')
    elif request.method == 'POST':
        # try:
        task_form = request.form
        taskdata = DailyTask()
        taskdata.title = task_form['title']
        taskdata.desc = task_form['desc']
        taskdata.content = task_form['content']
        taskdata.image = hashimage(request.files.get('image'))
        taskdata.target = int(task_form['target'])
        taskdata.date = get_time()
        if task_form['new_label']:
            nlabel = Label()
            nlabel.name = task_form['new_label']
            db.session.add(nlabel)
            db.session.commit()
            taskdata.label = int(nlabel.label_id)
        else:
            taskdata.label = int(task_form['label'])
        db.session.add(taskdata)
        db.session.commit()
        return render_template('Verify.html',verify = 'success')
        # except:
        #     return render_template('Verify.html',verify = 'error')
    else:
        return render_template('Verify.html',verify = 'error')


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

#管理页面
#-------------------------------------------------------------------------------
@app.route('/shanyi/manage',methods = ['GET'])
def manage():
    return render_template('Manage.html',title = u'管理中心',manage = True)

#发布新闻
#-------------------------------------------------------------------------------
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
            newsdata.image = hashimage(request.files.get('file'))
            newsdata.subtitle = news_form['subtitle']
            newsdata.title = news_form['title']
            newsdata.source = news_form['source']
            newsdata.content = news_form['content']
            newsdata.type = news_form['type']
            newsdata.city = 0
            newsdata.datetime = get_time()
            db.session.add(newsdata)
            db.session.commit()
            return render_template('Verify.html',verify = 'success')
        except:
            return render_template('Verify.html',verify = 'error')
    else:
        return render_template('Verify.html',verify = 'error')

#发布奖品
#-------------------------------------------------------------------------------
@app.route('/shanyi/prize',methods = ['GET','POST'])
@login_required
def prize():
    if request.method == 'GET':
        return render_template('Prize.html',title = u'发布奖品',manage = True)
    elif request.method == 'POST':
        try:
            prize_form = request.form
            # '' in prize_form.values
            prizedata = Prize()
            prizedata.title = prize_form['title']
            prizedata.content = prize_form['content']
            prizedata.provider = prize_form['provider']
            prizedata.cover = hashimage(request.files.get('cover'))
            prizedata.round_img = hashimage(request.files.get('round_img'))
            prizedata.image = hashimage(request.files.get('image'))
            prizedata.cost = int(prize_form['cost'])
            prizedata.datetime = get_time()
            db.session.add(prizedata)
            db.session.commit()
            return render_template('Verify.html',verify = 'success')
        except:
            return render_template('Verify.html',verify = 'error')
    else:
        return render_template('Verify.html',verify = 'error')

#发送系统消息
#-------------------------------------------------------------------------------
@app.route('/shanyi/systemmessage',methods = ['GET','POST'])
@login_required
def systemmessage():
    if request.method == 'GET':
        users = db.session.query(User).all()
        return render_template('SystemMessage.html',users = users,manage = True)
    elif request.method == 'POST':
        try:
            system_form = request.form
            systemdata = SystemMessage()
            systemdata.content = system_form['content']
            systemdata.type = system_form['type']
            systemdata.uid = system_form['uid']
            systemdata.datetime = get_time()
            db.session.add(systemdata)
            db.session.commit()
            return render_template('Verify.html',verify = 'success')
        except:
            return render_template('Verify.html',verify = 'error')
    else:
        return render_template('Verify.html',verify = 'error')

#举报列表
#-------------------------------------------------------------------------------
@app.route('/shanyi/reports',methods = ['GET'])
def reports():
    reports = db.session.query(Report).order_by(Report.datetime.desc()).all()
    report_hw = []
    report_mercy = []
    report_item = {}
    reasons = [u'广告',u'色情',u'反动',u'无关']
    for i in reports:
        i.user = db.session.query(User).filter_by(uid = i.uid).first()
        i.heartword = db.session.query(HeartWord).filter_by(hwid = i.hwid).first()
        if i.heartword.hwid in report_item:
            report_item[i.heartword.hwid] += 1
            continue
        else:
            report_item[i.heartword.hwid] = 1
        i.report_user = db.session.query(User).filter_by(uid = i.heartword.uid).first()
        i.reason_cn = reasons[i.reason]
        if i.heartword.type == 0:
            report_hw.append(i)
        else:
            i.images = db.session.query(HeartWordImage).filter_by(hwid = i.heartword.hwid).all()
            report_mercy.append(i)

    return render_template('Reports.html',report_hw = report_hw,report_mercy = report_mercy,report_item = report_item,title = u'举报列表',manage = True)

#用户奖品信息
#-------------------------------------------------------------------------------
@app.route('/shanyi/userprize',methods = ['GET'])
def user_prize():
    userp = db.session.query(UserPrizeClaim).all()
    for i in userp:
        i.user = db.session.query(User).filter_by(uid = i.uid).first()
        i.prize = db.session.query(Prize).filter_by(pzid = i.pzid).first()
    return render_template('UserPrize.html',userp = userp,manage = True)

#启动页图片设置
#-------------------------------------------------------------------------------
@app.route('/shanyi/splash',methods = ['GET','POST'])
def splash():
    if request.method == 'GET':
        return render_template('Splash.html')
    elif request.method == 'POST':
        try:
            splash_form = request.form
            splashdata = Splash()
            splashdata.url = splash_form['url']
            splashdata.img = hashimage(request.files.get('img'))
            db.session.add(splashdata)
            db.session.commit()
            return render_template('Verify.html',verify = 'success')
        except:
            return render_template('Verify.html',verify = 'error')
    else:
        return render_template('Verify.html',verify = 'error')

@app.route('/shanyi/managetask',methods = ['GET'])
def select():
    labels = db.session.query(Label).all()
    return render_template('ManageTasks.html',labels = labels,title = u'发布日常任务',manage = True)


@app.route('/shanyi/select',methods = ['GET'])
def managetask():
    return render_template('Select.html',title = u'选择',manage = True)

if __name__ == "__main__":
	app.run(host='0.0.0.0',port=8888, debug=True)
