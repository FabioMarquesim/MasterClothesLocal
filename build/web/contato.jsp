<%-- 
    Document   : contato
    Created on : 12/05/2016, 17:01:06
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Contato</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Master Clothes">
        <meta name="description" content="Master Clothes">
        <link rel="icon" href="img/favicon.ico">


        <!--Bootstrap
        ========================-->
        <link href="css/bootstrap.css" rel="stylesheet">

    </head>
    <body style="overflow-x: hidden; padding: 50px 0 70px 0" id="topPage">
        <!--Menu Superior
        ========================-->
        <%@include file="menusup.jspf" %>

        <!--Section
        ========================-->
        <section>
            <article>
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">
                        <h2>Contato</h2>
                        <hr>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-5">
                        <form action="Controller" method="POST">
                            <div class="form-group">
                                <label for="nome">Nome:</label><br>
                                <input type="text" name="nome" class="form-control" id="nome" required="required"/><br>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label><br>
                                <input type="email" name="email" class="form-control" id="email" required="required"/><br>
                            </div>
                            <div class="form-group">
                                <label for="txt_area">Mensagem:</label><br>
                                <textarea id="txt_area" class="form-control" rows="3"></textarea><br>
                            </div>
                            <input type="hidden" name="controller" value="contato.enviar"/>
                            <input type="submit" class="btn btn-success" value="Enviar"/>
                        </form>
                    </div>
                    <div class="col-lg-4"></div>
                </div>
            </article>
        </section>
        <!--Footer
        ========================-->
        <%@include file="footer.jspf" %>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.js"></script>
        <script src="js/collapse.js"></script>
        <script src="js/transition.js"></script>
    </body>
</html>
