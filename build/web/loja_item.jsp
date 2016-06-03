<%-- 
    Document   : loja_item
    Created on : 26/04/2016, 15:55:13
    Author     : fabio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Produto - Master Clothes</title>
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
                <form action="Controller" method="POST">
                    <div class="row">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-4">
                            <img class="img-border img-responsive" src="img/sem-foto_800.jpg" alt="">
                        </div>
                        <div class="col-lg-4">                        
                            <h1>${prodItem.nome}</h1>
                            <p>
                                Código: ${prodItem.id_produto}<br>
                                Descrição: ${prodItem.descricao}<br>
                                <span class="preco">POR: R$ ${prodItem.preco}</span><br>
                                OU 3X DE R$ ${prodItem.preco/3}<br>
                                SEM JUROS NO CARTÃO<br>
                            </p>
                            <div class="dropdown btn-item-compra">
                                <div class="form-group">
                                    <label for="sel1">Cor:</label>
                                    <select class="form-control" id="sel1">
                                        <option>${prodItem.cor}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="dropdown btn-item-compra">
                                <div class="form-group">
                                    <label for="sel2">Tamanho:</label>
                                    <select class="form-control" id="sel2">
                                        <option>${prodItem.tamanho}</option>
                                    </select>
                                </div>
                            </div>
                            <div>
                                <div class="form-group">
                                    <label for="qtde">Quantidade:</label>
                                    <input class="form-control" id="qtde" name="qtde" type="number" value="1" required />
                                </div>
                            </div>
                            <div class="btn-group">
                                <input type="hidden" name="id_produto" value="${prodItem.id_produto}"/>
                                <input type="hidden" name="command" value="pedido.addPedido"/>
                                <c:choose>
                                    <c:when test="${pfisica == null}">
                                        <input type="submit" class="btn btn-success" value="Comprar" disabled="disabled" />
                                    </c:when>
                                    <c:otherwise>
                                        <input type="hidden" name="id_pfisica" value="${pfisica.id_pfisica}" />
                                        <input type="submit" class="btn btn-success" value="Comprar" />
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                </form>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <div class="thumbnail">
                            <div class="caption">
                                <h3>Frete</h3>
                                <p>Calcule o frete e o prazo de entrega estimado para a sua região:</p>
                                <input type="text" class="form-control" placeholder="CEP" disabled="disabled">
                                <button type="submit" class="btn btn-default btn-item-compra" disabled="disabled">Buscar</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </article> 
            <!--                
            <hr>
            <h2 class="h2-margin">Sugeridos</h2>
            <article class="article-border">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="thumbnail">
                            <img src="img/ck_01.jpg" alt="">
                            <div class="caption text-center">
                                <h3>Camiseta Teste</h3>
                                <p>Preço paradrão <span class="preco-thumb">R$00,00</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="thumbnail">
                            <img src="img/ck_01.jpg" alt="">
                            <div class="caption text-center">
                                <h3>Camiseta Teste</h3>
                                <p>Preço paradrão <span class="preco-thumb">R$00,00</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="thumbnail">
                            <img src="img/ck_01.jpg" alt="">
                            <div class="caption text-center">
                                <h3>Camiseta Teste</h3>
                                <p>Preço paradrão <span class="preco-thumb">R$00,00</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="thumbnail">
                            <img src="img/ck_01.jpg" alt="">
                            <div class="caption text-center">
                                <h3>Camiseta Teste</h3>
                                <p>Preço paradrão <span class="preco-thumb">R$00,00</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            -->
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