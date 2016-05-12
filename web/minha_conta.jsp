<%-- 
    Document   : minha_conta
    Created on : 26/04/2016, 15:57:01
    Author     : fabio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Minha Conta</title>
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
        <c:if test="${cliente==null}">
            <c:redirect url="index.jsp"></c:redirect>
        </c:if>
        <%@include file="menusup.jspf" %>
        
        <!--Section
        ========================-->
        <section>
            <div class="row">
                <div class="col-lg-2" id="sidebar">
                    <div class="list-group">
                        <a href="#" class="list-group-item active">Meus Dados</a>
                        <a href="#" class="list-group-item">Ultimo Pedido</a>
                        <a href="#" class="list-group-item">Todos os Pedidos</a>
                    </div>
                </div>
                <div class="col-lg-9">
                    <h1>Minha Conta</h1>
                    <hr>
                    <article>
                        <!--Carrega Página-->
                        
                    </article>
                </div>
                <div class="col-lg-1"></div>
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