#!/usr/bin/env python
#coding=utf-8
from os import urandom
class Config(object):
	SQLALCHEMY_DATABASE_URI='mysql://root:19951028liu@localhost:3306/shanyi?charset=utf8'
	SQLALCHEMY_COMMIT_ON_TEARDOWN=True
	SQLALCHEMY_TRACK_MODIFICATIONS=True
	SECRET_KEY = 'Shanyi'
#admin
ADMIN_USERNAME = 'Shanyi'
ADMIN_PASSWORD = 'ShanyiAdmin'
