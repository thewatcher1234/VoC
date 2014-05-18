from bottle import view, Bottle, template, SimpleTemplate
#from beaker.middleware import SessionMiddleware
from cork import Cork
from cork.backends import SqlAlchemyBackend

db = SqlAlchemyBackend('mysql://thewatcher1234:q6hFgZwNCQ9wGNaPUbT3RvNX@mysql.server/thewatcher1234$Default', initialize=False)

Auth = Cork(backend=db,email_sender='thewatchercorps@gmail.com',smtp_url='smtp://thewatcher1234@gmail.com:watchercorpssiteemail!@:587')

application = Bottle()

@application.route('/')
@view('Index')
def Home():
    return {}
