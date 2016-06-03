<%-- 
    Document   : loja_masc
    Created on : 26/04/2016, 15:54:18
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Loja - Master Clothes</title>
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
        <c:if test="${listaProdsMasc == null}">
            <c:redirect url="Controller?command=prod.preencheMasc"></c:redirect>
        </c:if>
        <!--Section
        ========================-->
        <section>
            <!--Nav Lateral
            ========================-->
            <div class="row">
                <div class="col-lg-1" id="sidebar"></div>
                <div class="col-lg-10">
                    <article>
                        <div class="row">
                            <div class="col-lg-12">
                                <img class="img-border img-responsive center-block" src="img/banner_grande.jpg" alt="">
                            </div>
                        </div>
                    </article>
                    <article class="article-border-loja">
                        <div class="row">
                            <c:forEach var="i" begin="0" end="${listaProdsMasc.size()-1}">
                                <c:if test="${listaProdsMasc.get(i).status}">
                                    <div class="col-lg-3">
                                        <div class="thumbnail">
                                            <img src="img/sem-foto_800.jpg" alt="">
                                            <div class="caption">
                                                <h3>${listaProdsMasc.get(i).nome}</h3>
                                                <p>R${listaProdsMasc.get(i).preco}<br>
                                                    <a href="Controller?command=prod.direcionaPag&produtoSel=${listaProdsMasc.get(i).id_produto}"><button class="btn btn-success">COMPRAR</button></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <c:if test="${i+1%4 == 0}">
                                    </div>
                                </article>
                                <article class="article-border-loja">
                                    <div class="row">
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </div>
                    </article>
                </div>
                <div class="col-lg-1"></div>
            </div>
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