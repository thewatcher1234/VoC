<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>{{get('title',"The Watcher Site")}}</title>
    <link href="Content/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width" />
    <script src="Content/Scripts/modernizr.js"></script>
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
</head>
<body>
    <header>
        <div class="container-fluid">
            <nav class="navbar navbar-cdefault" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MainNav">
                        <span class="sr-only">Main Site Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">Home</a>
                </div>
                <div class="collapse navbar-collapse" id="MainNav">
                    <ul class="nav navbar-nav">
                        <li class="divider"></li>
                        <li><a href="/About">About</a></li>
                        <li><a href="/Contact">Contact</a></li>
                        <li><a href="/Game">Game</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    <div id="body">
        <section class="content-wrapper main-content clear-fix">
            {{base}}
        </section>
    </div>
    <script src="Content/bootstrap/js/bootstrap.js"></script>
</body>
</html>
