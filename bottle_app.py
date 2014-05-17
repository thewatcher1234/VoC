import bottle
from beaker.middleware import SessionMiddleware
from cork import Cork
from cork.backends import SqlAlchemyBackend

db = SqlAlchemyBackend(' 

Auth = Cork(backend=db,email_sender='thewatchercorps@gmail.com',smtp_url='smtp://thewatcher1234@gmail.com:watchercorpssiteemail!@:587')
