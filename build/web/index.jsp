<%-- 
    Document   : index
    Created on : 15/04/2016, 08:01:46
    Author     : MasterClothes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Home - Master Clothes</title>
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
                    <div class="col-lg-12">
                        <img class="img-responsive center-block" src="img/home_banner.jpg" alt="">
                    </div>
                </div>
            </article>
            <h2 class="text-center">Destaques</h2>
            <hr>
            <article>
                <div class="row" style="margin-top: 15px; padding: 0 20px 0 20px">
                    <div class="col-lg-4">
                        <img class="center-block img-border" src="img/banner_279-140.jpg" alt="Generic placeholder image">
                        <p class="text-center" style="padding: 0 40px 20px 40px">Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
                    <div class="col-lg-4">
                        <img class="center-block  img-border" src="img/banner_279-140.jpg" alt="Generic placeholder image">
                        <p class="text-center" style="padding: 0 40px 20px 40px">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. </p>
                    </div>
                    <div class="col-lg-4">
                        <img class="center-block img-border" src="img/banner_279-140.jpg" alt="Generic placeholder image">
                        <p class="text-center" style="padding: 0 40px 20px 40px">Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.</p>
                    </div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-6">
                        <img class="center-block img-responsive img-border" src="img/ck_banner634.jpg" alt="Meu Pc">
                    </div>
                    <div class="col-lg-6">                        
                        <img class="center-block img-responsive  img-border" src="img/ck_banner634.jpg" alt="Meu Pc">
                    </div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-12">
                        <img class="center-block img-responsive  img-border" src="img/ck_calcas.jpg" alt="">
                    </div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-6">
                        <img class="center-block img-responsive  img-border" src="img/ck_banner634.jpg" alt="Meu Pc">
                    </div>
                    <div class="col-lg-6">
                        <img class="center-block img-responsive img-border" src="img/ck_banner634.jpg" alt="Meu Pc">
                    </div>
                </div>
            </article>
        </section>

        <!--Footer
        ========================-->
        <footer class="footer text-center">
            <p class="navbar-text"><small>&copy;2016 - Master Clothes</small></p>
            <a href="#topPage" title="Voltar ao topo">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>
            <ul class="list-footer">
                <li><a href="contato.html">Contato</a></li>
                <li><a href="sobre.html">Sobre</a></li>
            </ul>
        </footer>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.js"></script>
        <script src="js/collapse.js"></script>
        <script src="js/transition.js"></script>
    </body>
</html>

