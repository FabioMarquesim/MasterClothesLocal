<%-- 
    Document   : login
    Created on : 15/04/2016, 08:08:02
    Author     : MasterClothes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Master Clothes</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Master Clothes">
        <meta name="description" content="Master Clothes">
        <link rel="icon" href="img/favicon.ico">


        <!--Bootstrap
        ========================-->
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/signin.css" rel="stylesheet">

    </head>
    <body>
        <!--Sistema de Login
        ======================-->
        <div class="container">
            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <form class="form-signin" action="Controller" method="POST">
                        <figure>
                            <div class="media">
                                <div class="media-body media-middle">
                                    <a href="index.jsp">
                                        <img class="media-object img-circle" src="img/logo_mc.jpg" alt="" width="140" height="140" style="margin: 0 0 10px 80px">
                                    </a>
                                </div>
                            </div>
                        </figure>
                        <label for="inputEmail" class="sr-only">Nomde de Usuário</label>
                        <input type="text" id="inputEmail" name="username" class="form-control" placeholder="Username" required autofocus>
                        <label for="inputPassword" class="sr-only">Senha</label>
                        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Senha" required>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="remember-me"> Lembrar-me
                            </label>
                            <label>
                                <a href="cadastro.jsp" class="cadastro">Crie uma conta</a>
                            </label>
                        </div>
                        <input type="hidden" name="command" value="user.login"/>
                        <button class="btn btn-lg btn-primary btn-block btn-myColor" type="submit" value="login">Logar</button>
                    </form>
                </div>
                <div class="col-lg-4"></div>

            </div> <!-- /container -->
        </div>
    </body>
</html>