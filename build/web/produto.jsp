<%-- 
    Document   : produto
    Created on : 26/04/2016, 15:56:42
    Author     : fabio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Produtos - Master Clothes</title>
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
        <c:if test="${pfisica==null || pfisica.usuario.tipo!=0}">
            <c:redirect url="index.jsp"></c:redirect>
        </c:if>
        <%-- <c:if test="${produtos != null}">
            <c:redirect url="Controller?command=prod.inicio"></c:redirect>
        </c:if> --%>

        <!--Menu Superior
        ========================-->
        <%@include file="menusup.jspf" %>

        <!--Section
        ========================-->
        <c:if test="${produtos == null}">
            <c:redirect url="Controller?command=produto.inicio"></c:redirect>
        </c:if>
        <section>
            <!--Header-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <h1>Produtos</h1>
                    <hr>
                </div>
                <div class="col-lg-8"></div>
                <div class="col-lg-1"></div>
            </div>

            <!--Menu secundario-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <ul class="nav navbar-nav">
                        <li><a id="adicionar_produto" class="btn btn-default">Adicionar</a></li>
                    </ul>
                    <form action="Controller" method="POST">
                        <input type="hidden" name="command" value="produto.inicio"/>
                        <input type="submit" value="REFRESH" class="btn btn-default"/>
                    </form>
                </div>
                <div class="col-lg-6"></div>
                <div class="col-lg-2">
                    <div class="input-group">
                        <input type="text" placeholder="Pesquisar Produto" class="form-control" aria-label="..." disabled>
                        <div class="input-group-btn">
                            <button class="btn" type="submit" disabled><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1"></div>
            </div>

            <!--Quebra de linha-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <hr>
                </div>
                <div class="col-lg-1"></div>                
            </div>

            <!--Lista de Produtos-->
            <div class="row">
                <h3 class="erro danger">${erro}</h3>
                <c:set var="erro" scope="session" value=""></c:set>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">
                        <table border="1" class="table table-hover table-responsive text-center">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Cód. Ref.</th>
                                    <th>Preço</th>
                                    <th>Público</th>
                                    <th>Status</th>
                                    <th>Publicar</th>
                                    <th>Alterar</th>
                                    <th>Apagar</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="prod" items="${produtos}">
                                <tr>
                                    <td>${prod.nome}</td>
                                    <td>${prod.id_produto}</td>
                                    <td>R$ ${prod.preco}</td>
                                    <td>
                                        <c:if test="${prod.publico == 1}">
                                            Homem
                                        </c:if>
                                        <c:if test="${prod.publico == 2}">
                                            Mulher
                                        </c:if>
                                    </td>
                                    <td>
                                        <c:if test="${prod.status}">
                                            Publicado
                                        </c:if>
                                        <c:if test="${!prod.status}">
                                            Não Publicado
                                        </c:if>
                                    </td>
                                    <td>
                                        <form action="Controller" method="POST">
                                            <input type="hidden" name="produtoPublicar" value="${prod.id_produto}"/>
                                            <input type="hidden" name="command" value="prod.publicar"/>
                                            <c:if test="${prod.status}">
                                                <button disabled="disabled"><span class='glyphicon glyphicon-open' aria-hidden='true'></span></button>
                                                </c:if>
                                                <c:if test="${!prod.status}">
                                                <button type="submit"><span class='glyphicon glyphicon-open' aria-hidden='true'></span></button>
                                                </c:if>
                                        </form>
                                    </td>
                                    <td>
                                        <form action="Controller" method="POST">
                                            <input type="hidden" name="produtoAlterar" value="${prod.id_produto}"/>
                                            <input type="hidden" name="command" value="prod.alterar"/>
                                            <button type="submit"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
                                        </form>
                                    </td>
                                    <td>
                                        <form action="Controller" method="POST">
                                            <input type="hidden" name="produtoExcluir" value="${prod.id_produto}"/>
                                            <input type="hidden" name="command" value="prod.apagar"/>
                                            <button type="submit"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
                                        </form>
                                    </td>
                                </tr>                                                       
                            </c:forEach>
                        </tbody>
                    </table>
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
        <script type="text/javascript">
            document.getElementById("adicionar_produto").onclick = function () {
                location.href = "adicionar_produto.jsp";
            };
        </script>
    </body>
</html>
