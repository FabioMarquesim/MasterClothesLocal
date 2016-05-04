<%-- 
    Document   : loja_item
    Created on : 26/04/2016, 15:55:13
    Author     : fabio
--%>

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
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-4">
                        <img class="img-border img-responsive" src="img/ck_01.jpg" alt="">
                    </div>
                    <div class="col-lg-4">
                        <h1>CALVIN KLEIN</h1>
                        <p>
                            Código: FFFFFFF<br>
                            Descrição: Camiseta CALVIN KLEIN DECOTE V acabamento em tecido preto.<br>
                            <span class="preco">POR: R$ 00,00</span><br>
                            OU 0X DE R$ 00,00<br>
                            SEM JUROS NO CARTÃO<br>
                        </p>
                        <div class="dropdown btn-item-compra">
                            <div class="form-group">
                                <label for="sel1">Cor:</label>
                                <select class="form-control" id="sel1">
                                    <option>Preto</option>
                                    <option>Branco</option>
                                    <option>Rosa</option>
                                    <option>Azul</option>
                                    <option>Verde</option>
                                </select>
                            </div>
                        </div>
                        <div class="dropdown btn-item-compra">
                            <div class="form-group">
                                <label for="sel2">Tamanho:</label>
                                <select class="form-control" id="sel2">
                                    <option>PP</option>
                                    <option>P</option>
                                    <option>M</option>
                                    <option>G</option>
                                    <option>GG</option>
                                </select>
                            </div>
                        </div>
                        <div class="btn-group">
                            <button type="submit" class="btn btn-success btn-lg btn-item-compra">Comprar</button>
                        </div>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <div class="thumbnail">
                            <div class="caption">
                                <h3>Frete</h3>
                                <p>Calcule o frete e o prazo de entrega estimado para a sua região:</p>
                                <input type="text" class="form-control" placeholder="CEP">
                                <button type="submit" class="btn btn-default btn-item-compra">Buscar</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </article>  
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