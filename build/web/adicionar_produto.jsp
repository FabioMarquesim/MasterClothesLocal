<%-- 
    Document   : adicionar_produto
    Created on : 26/04/2016, 15:51:51
    Author     : fabio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Adicionar Produto - Master Clothes</title>
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
        <c:if test="${pfisica==null || pfisica.usuario.tipo!=0}">
            <c:redirect url="index.jsp"></c:redirect>
        </c:if>
        <%@include file="menusup.jspf" %>

        <!--Section
        ========================-->
        <section>
            <!--Header-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-3">
                    <h1>Adicionar Produto</h1>
                    <p class="erro">${erro}</p>
                    <c:set var="erro" scope="session" value=""></c:set>
                    </div>
                    <div class="col-lg-7"></div>
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

                <!--Formulario-->
                <form action="Controller" method="POST">
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-4">
                            <!--Nome do Produto-->
                            <label for="nome_prod">Nome do Produto:</label>
                            <input class="form-control" id="nome_prod" name="nome_prod" type="text" required="required">
                            <!--Número de Referência-->
                            <label for="tamanho">Tamanho: <span class="small label-info">Ex:'P' (APENAS UM TAMANHO)</span></label>
                            <input class="form-control" id="tamanho" name="tamanho" type="text" required="required">
                            <!--Descrição-->
                            <label for="descricao">Descrição:</label>
                            <textarea class="form-control" rows="6" id="descricao" name="descricao" required="required"></textarea>
                            <!--Preço-->
                            <label for="preco">Preço:</label>
                            <div class="input-group">
                                <span class="input-group-addon">R$</span>
                                <input type="text" class="form-control" name="preco" id="preco" aria-label="...">
                            </div>
                            <!--Categoria-->
                            <label for="categoria">Categoria:</label>
                            <select class="form-control" name="categoria" id="categoria" size="1" required="required">
                                <option value="">-- Categoria --</option>
                            <c:forEach var="cat" items="${categorias}">
                                <option value="${cat.id_categoria}">${cat.nome_cat}</option>
                            </c:forEach>
                        </select>
                        <!--Publico-->
                        <label for="publico">Público:</label>
                        <select class="form-control" name="publico" size="1" id="publico" required="required">
                            <option value="">-- Publico --</option>
                            <option value="1">Homem</option>
                            <option value="2">Mulher</option>
                        </select>
                        <!--Cores-->
                        <label for="cor">Cores: <span class="small label-info">Ex:'Branco' (APENAS UMA COR)</span></label>
                        <input class="form-control" id="cor" name="cor" type="text" required>
                    </div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-4">
                        <!--Imagem do Produto-->
                        <label>Imagem do Produto:</label>
                        <img class="img-adiciona my-border img-responsive" src="img/sem-foto_800.jpg" alt="">
                        <input type="submit" class="btn btn-default" value="Carregar Imagem" disabled />
                    </div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-1"></div>
                </div>
                <div class="row">
                    <div class="col-lg-6"></div>
                    <div class="col-lg-4">
                        <!--Botoes Finaliza-->
                        <div class="btn-group my-btn">
                            <input type="hidden" name="command" value="produto.adicionar"/>
                            <input type="submit" class="btn btn-success" value="Adicionar"/>
                            <input type="reset" class="btn btn-default" value="Cancelar"/>
                        </div>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </form>   
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