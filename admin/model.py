# coding: utf-8
from sqlalchemy import Column, Date, DateTime, ForeignKey, Index, Integer, SmallInteger, String, Table, Text, text
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base
import flask.ext.whooshalchemy as whooshalchemy
from flask.ext.sqlalchemy import SQLAlchemy
from datetime import datetime
from flask import Flask
from config import *
import sys, os

basedir = os.path.abspath(os.path.dirname(__file__))
app = Flask(__name__)
app.config.from_object(Config)
db = SQLAlchemy(app)

Base = declarative_base()
metadata = Base.metadata


#mysql change
#ALTER TABLE heart_words ADD star bool default false;
#ALTER TABLE users ADD freeze bool default false;



class AdminUser(Base):
    __tablename__ = 'AdminUsers'

    uid = Column(Integer, primary_key=True)
    username = Column(String(255), nullable=False)
    password = Column(String(255), nullable=False)
    datetime = Column(DateTime, nullable=False)


class Achievement(Base):
    __tablename__ = 'achievements'

    acid = Column(Integer, primary_key=True)
    title = Column(String(255), nullable=False)
    oneword = Column(Text, nullable=False)
    condition = Column(Text, nullable=False)
    condition_finer = Column(Text, nullable=False)
    type = Column(Integer, nullable=False, server_default=text("'0'"))
    datetime = Column(DateTime, nullable=False)


class CalendarRecord(Base):
    __tablename__ = 'calendar_records'
    __table_args__ = (
        Index('calender_uid_date_unique', 'uid', 'date', unique=True),
    )

    crid = Column(Integer, primary_key=True)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False)
    date = Column(Date, nullable=False)
    good_count = Column(SmallInteger, nullable=False)

    user = relationship(u'User')


class City(Base):
    __tablename__ = 'cities'

    cid = Column(Integer, primary_key=True, nullable=False, index=True)
    name = Column(String(50), primary_key=True, nullable=False)
    letter = Column(String(255))
    pid = Column(ForeignKey(u'provinces.pid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)

    province = relationship(u'Province')


class DailyTaskComment(Base):
    __tablename__ = 'daily_task_comments'

    cmid = Column(Integer, primary_key=True)
    dtid = Column(ForeignKey(u'daily_tasks.dtid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    content = Column(String(255), nullable=False)
    likes = Column(Integer, nullable=False, server_default=text("'0'"))
    datetime = Column(DateTime, nullable=False)

    daily_task = relationship(u'DailyTask')
    user = relationship(u'User')


class DailyTaskLike(Base):
    __tablename__ = 'daily_task_likes'

    dtid = Column(ForeignKey(u'daily_tasks.dtid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False, index=True)
    datetime = Column(DateTime, nullable=False)

    daily_task = relationship(u'DailyTask')
    user = relationship(u'User')


class DailyTask(Base):
    __tablename__ = 'daily_tasks'

    dtid = Column(Integer, primary_key=True)
    title = Column(String(255), nullable=False)
    desc = Column(String(255), nullable=False)
    image = Column(String(255), nullable=False)
    content = Column(Text, nullable=False)
    target = Column(Integer, nullable=False)
    actual = Column(Integer, nullable=False, server_default=text("'0'"))
    label = Column(ForeignKey(u'labels.label_id', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True, server_default=text("'1'"))
    likes = Column(Integer, nullable=False, server_default=text("'0'"))
    comments = Column(Integer, nullable=False, server_default=text("'0'"))
    date = Column(Date, nullable=False)

    label1 = relationship(u'Label')


class FavouritesHeartWord(Base):
    __tablename__ = 'favourites_heart_word'

    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False)
    hwid = Column(ForeignKey(u'heart_words.hwid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False, index=True)
    datetime = Column(DateTime, nullable=False)

    heart_word = relationship(u'HeartWord')
    user = relationship(u'User')


class FavouritesNew(Base):
    __tablename__ = 'favourites_news'

    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False)
    nid = Column(ForeignKey(u'news.nid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False, index=True)
    datetime = Column(DateTime, nullable=False)

    news = relationship(u'News')
    user = relationship(u'User')


t_follows = Table(
    'follows', metadata,
    Column('fan_uid', ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False),
    Column('follow_uid', ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False, index=True)
)


class HeartWordComment(Base):
    __tablename__ = 'heart_word_comments'

    cmid = Column(Integer, primary_key=True)
    hwid = Column(ForeignKey(u'heart_words.hwid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    content = Column(String(255), nullable=False)
    likes = Column(Integer, nullable=False, server_default=text("'0'"))
    datetime = Column(DateTime, nullable=False)

    heart_word = relationship(u'HeartWord')
    user = relationship(u'User')


class HeartWordImage(Base):
    __tablename__ = 'heart_word_images'

    imid = Column(Integer, primary_key=True)
    hwid = Column(ForeignKey(u'heart_words.hwid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    md5 = Column(String(255), nullable=False)

    heart_word = relationship(u'HeartWord')


class HeartWordLike(Base):
    __tablename__ = 'heart_word_likes'

    hwid = Column(ForeignKey(u'heart_words.hwid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False, index=True)
    datetime = Column(DateTime, nullable=False)

    heart_word = relationship(u'HeartWord')
    user = relationship(u'User')


class HeartWord(Base):
    __tablename__ = 'heart_words'

    hwid = Column(Integer, primary_key=True)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    title = Column(String(255), nullable=False)
    content = Column(Text, nullable=False)
    likes = Column(Integer, nullable=False, server_default=text("'0'"))
    comments = Column(Integer, nullable=False, server_default=text("'0'"))
    type = Column(Integer, nullable=False, server_default=text("'0'"))
    label = Column(ForeignKey(u'labels.label_id', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True, server_default=text("'0'"))
    access = Column(Integer, nullable=False, server_default=text("'0'"))
    datetime = Column(DateTime, nullable=False)
    star = Column(Integer, server_default=text("'0'"))

    label1 = relationship(u'Label')
    user = relationship(u'User')


class Label(Base):
    __tablename__ = 'labels'

    label_id = Column(Integer, primary_key=True)
    name = Column(String(255), nullable=False)
    is_valid = Column(Integer, nullable=False, server_default=text("'1'"))
    achievement = Column(Integer, nullable=False, server_default=text("'0'"))


class Message(Base):
    __tablename__ = 'messages'

    mid = Column(Integer, primary_key=True)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    fan_uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    hwid = Column(ForeignKey(u'heart_words.hwid', ondelete=u'CASCADE', onupdate=u'CASCADE'), index=True)
    nid = Column(ForeignKey(u'news.nid', ondelete=u'CASCADE', onupdate=u'CASCADE'), index=True)
    content = Column(Text)
    type = Column(Integer, nullable=False)
    read = Column(Integer, nullable=False, server_default=text("'0'"))
    datetime = Column(DateTime, nullable=False)

    user = relationship(u'User', primaryjoin='Message.fan_uid == User.uid')
    heart_word = relationship(u'HeartWord')
    news = relationship(u'News')
    user1 = relationship(u'User', primaryjoin='Message.uid == User.uid')


class Module(Base):
    __tablename__ = 'modules'

    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    com = Column(String(255))


class News(Base):
    __tablename__ = 'news'

    nid = Column(Integer, primary_key=True)
    title = Column(String(255), nullable=False)
    subtitle = Column(String(255), nullable=False, server_default=text("''"))
    image = Column(String(255), nullable=False)
    source = Column(String(255), nullable=False)
    content = Column(Text, nullable=False)
    likes = Column(Integer, nullable=False, server_default=text("'0'"))
    comments = Column(Integer, nullable=False, server_default=text("'0'"))
    type = Column(Integer, nullable=False, server_default=text("'0'"))
    city = Column(ForeignKey(u'cities.cid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True, server_default=text("'0'"))
    datetime = Column(DateTime, nullable=False)

    city1 = relationship(u'City')


class NewsComment(Base):
    __tablename__ = 'news_comments'

    cmid = Column(Integer, primary_key=True)
    nid = Column(ForeignKey(u'news.nid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    content = Column(String(255), nullable=False)
    likes = Column(Integer, nullable=False, server_default=text("'0'"))
    datetime = Column(DateTime, nullable=False)

    news = relationship(u'News')
    user = relationship(u'User')


class NewsLike(Base):
    __tablename__ = 'news_likes'

    nid = Column(ForeignKey(u'news.nid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False, index=True)
    datetime = Column(DateTime, nullable=False)

    news = relationship(u'News')
    user = relationship(u'User')


class Prize(Base):
    __tablename__ = 'prizes'

    pzid = Column(Integer, primary_key=True)
    title = Column(String(255), nullable=False)
    content = Column(Text, nullable=False)
    provider = Column(String(255), nullable=False)
    cover = Column(String(255), nullable=False)
    round_img = Column(String(255), nullable=False)
    image = Column(String(255), nullable=False)
    cost = Column(Integer, nullable=False)
    datetime = Column(DateTime, nullable=False)
    is_valid = Column(Integer, nullable=False, server_default=text("'1'"))


class Province(Base):
    __tablename__ = 'provinces'

    pid = Column(Integer, primary_key=True, server_default=text("'0'"))
    name = Column(String(50))


class Religion(Base):
    __tablename__ = 'religions'

    rlid = Column(Integer, primary_key=True)
    name = Column(String(255), nullable=False)


class Report(Base):
    __tablename__ = 'reports'

    rpid = Column(Integer, primary_key=True)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    hwid = Column(ForeignKey(u'heart_words.hwid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    reason = Column(Integer, nullable=False)
    datetime = Column(DateTime, nullable=False)

    heart_word = relationship(u'HeartWord')
    user = relationship(u'User')


class Splash(Base):
    __tablename__ = 'splashes'

    spid = Column(Integer, primary_key=True)
    img = Column(String(255), nullable=False)
    url = Column(String(255))
    is_valid = Column(Integer, nullable=False, server_default=text("'1'"))


class StarSign(Base):
    __tablename__ = 'star_signs'

    ssid = Column(Integer, primary_key=True)
    name = Column(String(255), nullable=False)


class SystemMessage(Base):
    __tablename__ = 'system_messages'

    smid = Column(Integer, primary_key=True)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True, server_default=text("'0'"))
    content = Column(String(255), nullable=False)
    type = Column(Integer, nullable=False, server_default=text("'0'"))
    read = Column(Integer, nullable=False, server_default=text("'0'"))
    datetime = Column(DateTime, nullable=False)

    user = relationship(u'User')


class UserAchievementCondition(Base):
    __tablename__ = 'user_achievement_conditions'

    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False)
    acid = Column(ForeignKey(u'achievements.acid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True, nullable=False, index=True)
    count = Column(Integer, nullable=False)
    datetime = Column(DateTime, nullable=False)

    achievement = relationship(u'Achievement')
    user = relationship(u'User')


class UserAchievement(Base):
    __tablename__ = 'user_achievements'

    uid = Column(Integer, primary_key=True, nullable=False)
    acid = Column(Integer, primary_key=True, nullable=False)
    is_finer = Column(Integer, nullable=False, server_default=text("'0'"))
    datetime = Column(DateTime, nullable=False)


class UserPrizeClaim(Base):
    __tablename__ = 'user_prize_claims'

    clid = Column(Integer, primary_key=True)
    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    pzid = Column(ForeignKey(u'prizes.pzid', ondelete=u'CASCADE', onupdate=u'CASCADE'), nullable=False, index=True)
    real_name = Column(String(255), nullable=False)
    address = Column(String(255), nullable=False)
    cellphone = Column(String(11), nullable=False)
    datetime = Column(DateTime, nullable=False)
    is_closed = Column(Integer, nullable=False, server_default=text("'0'"))

    prize = relationship(u'Prize')
    user = relationship(u'User')


class User(Base):
    __tablename__ = 'users'

    uid = Column(Integer, primary_key=True)
    cellphone = Column(String(11), nullable=False)
    username = Column(String(255), nullable=False)
    password = Column(String(255), nullable=False)
    avatar = Column(String(255))
    nickname = Column(String(255, u'utf8mb4_bin'))
    sex = Column(Integer, nullable=False, server_default=text("'0'"))
    area = Column(String(10))
    religion = Column(ForeignKey(u'religions.rlid', ondelete=u'CASCADE', onupdate=u'CASCADE'), index=True)
    star_sign = Column(ForeignKey(u'star_signs.ssid', ondelete=u'CASCADE', onupdate=u'CASCADE'), index=True)
    email = Column(String(255))
    signature = Column(String(400))
    daily_good_deed = Column(Integer, nullable=False, server_default=text("'0'"))
    consecutive_days = Column(Integer, nullable=False, server_default=text("'0'"))
    level = Column(Integer, nullable=False, server_default=text("'1'"))
    points = Column(Integer, nullable=False, server_default=text("'0'"))
    gd_points = Column(Integer, nullable=False, server_default=text("'30'"))
    hw_points = Column(Integer, nullable=False, server_default=text("'20'"))
    salt = Column(String(255), nullable=False)
    reg_date = Column(DateTime, nullable=False)
    last_login = Column(DateTime)
    freeze = Column(Integer, server_default=text("'0'"))

    religion1 = relationship(u'Religion')
    star_sign1 = relationship(u'StarSign')
    parents = relationship(
        u'User',
        secondary='follows',
        primaryjoin=u'User.uid == follows.c.fan_uid',
        secondaryjoin=u'User.uid == follows.c.follow_uid'
    )


class UserStat(User):
    __tablename__ = 'user_stats'

    uid = Column(ForeignKey(u'users.uid', ondelete=u'CASCADE', onupdate=u'CASCADE'), primary_key=True)
    check_in_days = Column(Integer, nullable=False, server_default=text("'0'"))
    max_consecutive_days = Column(Integer, nullable=False, server_default=text("'0'"))
    goal_achieved_days = Column(Integer, nullable=False, server_default=text("'0'"))
    good_deed_count = Column(Integer, nullable=False, server_default=text("'0'"))
    heart_word_count = Column(Integer, nullable=False, server_default=text("'0'"))
    moved_user_count = Column(Integer, nullable=False, server_default=text("'0'"))
    liked_count = Column(Integer, nullable=False, server_default=text("'0'"))


class Version(Base):
    __tablename__ = 'versions'

    id = Column(Integer, primary_key=True)
    version = Column(String(255))
    url = Column(String(255))
    detail = Column(Text)
    type = Column(Integer, nullable=False)
