from bottle import view, Bottle
from beaker.middleware import SessionMiddleware
from cork import Cork, AuthException
from cork.backends import SqlAlchemyBackend
import config, string, random, bottle
#set up
db = SqlAlchemyBackend('mysql://thewatcher1234:'+ config.DBPassword + '@mysql.server/thewatcher1234$default', initialize=True)

Auth = Cork(backend=db,email_sender='thewatchercorps@gmail.com',smtp_url='smtp://thewatcher1234@gmail.com:watchercorpssiteemail!@:587')

bot= Bottle()
session_opts = {
    'session.cookie_expires': True,
    'session.encrypt_key': config.EncryptKey,
    'session.httponly': True,
    'session.timeout': 3600 * 24,  # 1 day
    'session.type': 'cookie',
    #'session.type': 'ext:database',
    #'url':'mysql://thewatcher1234:'+ config.DBPassword + '@mysql.server/thewatcher1234$default',
    'session.validate_key': True,
    'auto':True
}

app = SessionMiddleware(bot, session_opts)
session = bottle.request.environ.get('beaker.session')
#Helpers

def logoutKey():
    key = ''.join(random.choice(string.ascii_uppercase + string.digits) for x in range(random.randint(15,35)))
    session['ForgeKey'] = key
    return key

def postd():
    return app.request.forms


def post_get(name, default=''):
    return app.request.POST.get(name, default).strip()

def getUsername():
    try:
        return Auth.current_user.username
    except AuthException:
        return None

#Account Routes
@bot.get('/Account/Login')
@view('Account/Login')
def loginG():
    try:
        Auth.require()
        app.redirect('/')
    except AuthException:
        return {'title':'Login', 'Username':getUsername()}

@bot.post('/Account/Login')
def loginP():
    """Authenticate users"""
    username = post_get('username')
    password = post_get('password')
    Auth.login(username, password, success_redirect='/', fail_redirect='/login')

#Check for authentication on this one too
@bot.get('/Account/Register')
@view('Account/Register')
def registerG():
    return {'title':'Account Registration', 'Username':getUsername()}

@bot.post('/Account/Register')
def registerP():
    """Send out registration email"""
    Auth.register(post_get('username'), post_get('password'), post_get('email_address'))
    return 'Please check your mailbox.'


#Site Routes
@bot.route('/')
@view('Index')
def Home():
    return {'Username':getUsername()}#'ForgeKey': logoutKey()}

