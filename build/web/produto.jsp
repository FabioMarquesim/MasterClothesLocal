<%-- 
    Document   : produto
    Created on : 26/04/2016, 15:56:42
    Author     : fabio
--%>

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
        <!--Menu Superior
        ========================-->
        <%@include file="menusup.jspf" %>

        <!--Section
        ========================-->
        <section>
            <!--Header-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <h1>Produtos</h1>
                </div>
                <div class="col-lg-8"></div>
                <div class="col-lg-1"></div>
            </div>

            <!--Menu secundario-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Adicionar</a></li>
                        <li><a href="#">Alterar</a></li>
                    </ul>
                </div>
                <div class="col-lg-6"></div>
                <div class="col-lg-2">
                    <div class="input-group">
                        <input type="text" placeholder="Pesquisar Produto" class="form-control" aria-label="...">
                        <div class="input-group-btn">
                            <button class="btn" type="submit"><i class="glyphicon glyphicon-search"></i></button>
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
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <table border="1" class="table table-hover table-responsive">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Cód. Ref.</th>
                                <th>Preço</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>XXXXXXX</td>
                                <td>000000</td>
                                <td>R$ 00,00</td>
                                <td>Não Publicado</td>
                            </tr>                            
                            <tr>
                                <td>XXXXXXX</td>
                                <td>000000</td>
                                <td>R$ 00,00</td>
                                <td>Não Publicado</td>
                            </tr>                            
                            <tr>
                                <td>XXXXXXX</td>
                                <td>000000</td>
                                <td>R$ 00,00</td>
                                <td>Não Publicado</td>
                            </tr>                            
                            <tr>
                                <td>XXXXXXX</td>
                                <td>000000</td>
                                <td>R$ 00,00</td>
                                <td>Não Publicado</td>
                            </tr>                            
                            <tr>
                                <td>XXXXXXX</td>
                                <td>000000</td>
                                <td>R$ 00,00</td>
                                <td>Não Publicado</td>
                            </tr>                            
                            <tr>
                                <td>XXXXXXX</td>
                                <td>000000</td>
                                <td>R$ 00,00</td>
                                <td>Não Publicado</td>
                            </tr>                            
                            <tr>
                                <td>XXXXXXX</td>
                                <td>000000</td>
                                <td>R$ 00,00</td>
                                <td>Não Publicado</td>
                            </tr>                            
                        </tbody>
                    </table>
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
