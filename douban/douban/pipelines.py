# -*- coding: utf-8 -*-

from sqlalchemy import Column,String,Integer,DateTime
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

Base = declarative_base()

engine = create_engine('mysql+pymysql://root:123@localhost/test?charset=utf8')

Session = sessionmaker(bind = engine)
session = Session()

class Book(Base):
    __tablename__ = 'book'
    id=Column(Integer,primary_key=True,nullable=False)
    name=Column(String(100),nullable=True)
    price=Column(String(100),nullable=True)
    edition_year=Column(String(100),nullable=True)
    publisher=Column(String(100),nullable=True)
    def __init__(self,name,price,edition_year,publisher):
        self.name=name
        self.price=price
        self.edition_year=edition_year
        self.publisher=publisher


class DoubanBookPipeline(object):
    Base.metadata.create_all(engine)
    def process_item(self, item, spider):
        info = item['price'].split(' / ') 
        a = Book(
            name = item['name'],
            price= info[-1],
            edition_year = info[-2],
            publisher= info[-3]
        )
        session.add(a)
        session.commit()
        return item


class DoubanMailPipeline(object):
    def process_item(self, item, spider):
        item['title'] = item['title'].replace(' ', '').replace('\\n', '')
        return item