<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Cumpleaños</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600italic,700,700italic,300italic,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Fjalla+One' rel='stylesheet' type='text/css'>
        <asset:stylesheet src="application.css"/>
        <asset:stylesheet src="restyling.css"/>
        <asset:javascript src="application.js"/>
        <!-- <asset:stylesheet src="bootstrap.css"/> -->
        <asset:javascript src="jquery-2.1.3.js"/>
        <!-- <asset:javascript src="bootstrap.js"/> -->
        <g:layoutHead/>
    </head>
    <body>
        <header class="principal" id="grailsLogo" role="banner">
            <img class="logo" src="https://cdn2.iconfinder.com/data/icons/windows-8-metro-style/128/gift.png">
            <div class="user">
                USUARIO: <b> ${sec.username()} </b> <br>  
                <a href="${createLink(controller:"empleado", action:"logout")}">Logout</a>
            </div>
        </header>
        <section>
            <g:layoutBody/>
        </section>
        <footer class="footer" role="contentinfo"> 
            Powered by Amendola Bordes Olivero
        </footer>
    </body>
</html>