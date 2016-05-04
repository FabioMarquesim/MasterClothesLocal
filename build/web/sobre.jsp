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
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <h1>Sobre</h1>
                    <hr>
                </div>
                <div class="col-lg-1"></div>
            </div>
                <div class="row">
                <div class="col-lg-1"></div>                    
                <div class="col-lg-6">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sagittis eros ac metus porta congue. Vivamus non porttitor libero, in ultricies massa. Nulla non aliquam tortor, quis venenatis sapien. Donec condimentum ante risus, nec mollis sapien efficitur ut. Aenean consectetur massa non elit ultricies semper nec nec lorem. Praesent id pharetra ligula, molestie rhoncus eros. Morbi semper libero eu risus vehicula venenatis. Proin tempus pulvinar ante et bibendum. Nulla luctus mattis neque a varius.

Mauris et nulla quam. Donec semper consequat consectetur. Integer et luctus massa. In felis turpis, varius quis tincidunt vitae, feugiat pellentesque est. Donec sit amet condimentum risus, eu pellentesque quam. Nam sagittis nec diam quis vestibulum. Ut nec tincidunt est. Vivamus efficitur felis enim, at finibus odio placerat a. Fusce lacinia nulla vel lobortis volutpat.</p>
                </div>                    
                <div class="col-lg-5"></div>                    
                </div>
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
