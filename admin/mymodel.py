#!/usr/bin/env python
#coding=utf8
from model import *


class HeartWordStar(db.Model):
    __tablename__ = "HeartWordStar"

    Id = db.Column(db.Integer, primary_key=True)
    hwid = db.Column(db.Integer,nullable = False)
    datetime = db.Column(db.DateTime, nullable=False)



class AdminUsers(db.Model):
    __tablename__ = 'AdminUsers'

    uid = db.Column(db.Integer , primary_key = True)
    username = db.Column(db.String(255),nullable = False)
    password = db.Column(db.String(255),nullable = False)
    datetime = db.Column(db.DateTime,nullable = False)
