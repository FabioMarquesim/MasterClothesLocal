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
        <c:if test="${pfisica==null}">
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
                        <a href="#" class="list-group-item disabled">Ultimo Pedido</a>
                        <a href="#" class="list-group-item disabled">Todos os Pedidos</a>
                    </div>
                </div>
                <div class="col-lg-9">
                    <h1>Minha Conta</h1>
                    <hr>
                    <article>
                        <!--Alterar Senha-->
                        <h2>Alterar Senha</h2>
                        <form action="Controller" method="POST">
                            <p>Senha atual:<br>
                                <input type="password" name="senhaAtual" required="required"/>*
                            </p>
                            <p>Nova senha:<br>
                                <input type="password" name="novaSenha" required="required"/>*
                            </p>
                            <p>Confirme nova senha:<br>
                                <input type="password" name="novaSenha2" required="required"/>*
                            </p>
                            <input type="hidden" name="command" value="user.trocarSenha"/>
                            <p>
                                <input class="btn btn-success" type="submit" value="SALVAR"/>
                            </p>
                        </form>
                        <p class="erro">${erro}</p>
                        <c:set var="erro" scope="session" value=""></c:set>
                            <!--FIM Alterar Senha-->
                        </article>
                        <article>
                            <!--Aterar Dados-->
                            <h2>Alterar Dados</h2>
                            <form action="Controller" method="POST">
                            <p>
                                <!--Usuario-->
                                Nome de usuário:<br>
                                    <input class="form-control" id="disabledInput" type="text" readonly value="${pfisica.usuario.nome_usuario}"/>
                            </p>
                            <p>
                                <!--Data de Nascimento-->
                                Data de Nascimento:<br>
                                <input class="form-control" id="disabledInput" type="date" readonly value="${pfisica.dataNasc}"/>
                            </p>
                            <p>
                                <!--Nome-->
                                Nome:<br>
                                <input class="form-control" id="firstName" name="firstName" placeholder="Nome" type="text" value="${pfisica.nome}">
                            </p>
                            <p>
                                <!--Sobrenome-->
                                Sobrenome:<br>
                                <input class="form-control" name="lastName" placeholder="Sobrenome" type="text" value="${pfisica.sobrenome}">
                            </p>
                            <p>
                                <!--EMAIL-->
                                Email:<br>
                                <input class="form-control" name="email" placeholder="Email" type="email" value="${pfisica.email}">
                            </p>
                            <p>
                                <!--Confirma_EMAIL-->
                                Confirmar Email:<br>
                                <input class="form-control" name="email2" placeholder="Confirmar Email" type="email" value="${pfisica.email}">
                            </p>
                            <input type="hidden" name="command" value="user.alterarDados"/>
                            <input class="btn btn-success" type="submit" value="SALVAR"/>
                        </form>
                            <p class="erro2">${erro2}</p>
                        <c:set var="erro2" scope="session" value=""></c:set>
                        <!--FIM Alterar Dados-->
                    </article>
                    <article>
                        <!--Apagar Conta-->
                        <h2>Apagar Conta</h2>
                        <p>Essa operação não pode ser desfeita. Tem certeza que quer apagar sua conta?</p>
                        <form action="Controller" method="POST">
                            <input type="hidden" name="command" value="user.apagar"/>
                            <input class="btn btn-danger" type="submit" value="APAGAR CONTA"/>
                        </form>
                        <!--FIM Apagar Conta-->
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