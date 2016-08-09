#!/usr/bin/env python
#coding=utf8

from model import *

if __name__ == '__main__':
    reports_data = db.session.query(Report).all()
    reports_dict = {}
    for i in reports_data:
        report_uid = db.session.query(HeartWord).filter_by(hwid = i.hwid).first().uid
        if reports_dict.has_key(report_uid):
            reports_dict[report_uid] += 1
        else:
            reports_dict[report_uid] = 1
    print reports_dict
    for i in reports_dict:
        if reports_dict[i] >= 20:
            freeze_user = db.session.query(User).filter_by(uid = i).first()
            freeze_user.freeze = 1
            db.session.commit()
    db.session.close()
