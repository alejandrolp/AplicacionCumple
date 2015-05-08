<html>
    <head>
        <title><g:layoutTitle default="An example decorator" /></title>
        <g:layoutHead />
    </head>
    <body>
        <div><!--my common menu goes here--></menu>
            <div>
                USUARIO: <b> ${sec.username()} </b> <br>  
                <a href="${createLink(controller:"empleado", action:"logout")}">Logout</a>
                <hr>
            </div>
            <div>
                <g:layoutBody />
            </div>
        </div>
    </body>
</html>