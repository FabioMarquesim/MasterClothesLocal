<%-- 
    Document   : sobre
    Created on : 26/04/2016, 16:01:12
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Sobre - Master Clothes</title>
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
                        <h1>Sobre</h1>
                        <hr>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
            </article>
            <article>
                <article>
                    <div class="container marketing text-center">
                        <div class="row">
                            <div class="col-lg-1"></div>
                            <div class="col-lg-4">
                                <img class="img-circle" src="img/avatar/fabio.png" alt="Fábio Marquesim" width="140" height="140" />
                                <h2>Fábio Marquesim</h2>
                                <p>TIA: 31595006</p>
                            </div>
                            <div class="col-lg-2"></div>
                            <div class="col-lg-4">
                                <img class="img-circle" src="img/avatar/andre.png" alt="Andre Faruolo" width="140" height="140" />
                                <h2>Andre Faruolo</h2>
                                <p>TIA: 31509371</p>
                            </div>
                            <div class="col-lg-1"></div>
                        </div><br>
                        <div class="row">
                            <div class="col-lg-1"></div>
                            <div class="col-lg-4">
                                <img class="img-circle" src="img/avatar/gabriel.png" alt="Gabriel Menegatti" width="140" height="140" />
                                <h2>Gabriel Menegatti</h2>
                                <p>TIA: 31539092</p>
                            </div>
                            <div class="col-lg-2"></div>
                            <div class="col-lg-4">
                                <img class="img-circle" src="img/avatar/henrique.png" alt="Henrique Areias" width="140" height="140" />
                                <h2>Henrique Areias</h2>
                                <p>TIA: 31544169</p>
                            </div>
                            <div class="col-lg-1"></div>
                        </div>
                    </div>
                </article>
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
