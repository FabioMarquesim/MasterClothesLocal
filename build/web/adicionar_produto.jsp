<%-- 
    Document   : adicionar_produto
    Created on : 26/04/2016, 15:51:51
    Author     : fabio
--%>

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
        <%@include file="menusup.jspf" %>
        
        <!--Section
        ========================-->
        <section>
            <!--Header-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-3">
                    <h1>Adicionar Produto</h1>
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
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-4">
                    <!--Nome do Produto-->
                    <label for="nome_prod">Nome do Produto:</label>
                    <input class="form-control" id="nome_prod" name="nome_prod" type="text" required>
                    <!--Número de Referência-->
                    <label for="num_ref">Número de Referência:</label>
                    <input class="form-control" id="num_ref" name="num_ref" type="number" required>
                    <!--Descrição-->
                    <label for="descricao">Descrição:</label>
                    <textarea class="form-control" rows="6" id="descricao" required></textarea>
                    <!--Preço-->
                    <label for="preco">Preço:</label>
                    <div class="input-group">
                        <span class="input-group-addon">R$</span>
                        <input type="text" class="form-control" name="preco" id="preco" aria-label="...">
                    </div>
                    <!--Categoria-->
                    <label for="categoria">Categoria:</label>
                    <select class="form-control" id="categoria">
                        <option>Camiseta</option>
                        <option>Camisa</option>
                        <option>Blusa</option>
                        <option>Calça</option>
                        <option>Bermuda</option>
                        <option>Acessório</option>
                    </select>
                    <!--Publico-->
                    <label for="publico">Público:</label>
                    <select class="form-control" id="publico">
                        <option>Homem</option>
                        <option>Mulher</option>
                    </select>
                    <!--Cores-->
                    <label for="cor">Cores: <span class="small label-info">Ex:'Branco, Azul, ...'</span></label>
                    <input class="form-control" id="cor" name="cor" type="text" required>
                </div>
                <div class="col-lg-1"></div>
                <div class="col-lg-4">
                    <!--Imagem do Produto-->
                    <label>Imagem do Produto:</label>
                    <img class="img-adiciona my-border img-responsive" src="img/sem-foto_800.jpg" alt="">
                    <button type="submit" class="btn btn-default">Carregar Imagem</button>
                </div>
                <div class="col-lg-1"></div>
                <div class="col-lg-1"></div>
            </div>
            <div class="row">
                <div class="col-lg-6"></div>
                <div class="col-lg-4">
                    <!--Botoes Finaliza-->
                    <div class="btn-group my-btn">
                        <button type="submit" class="btn btn-success">Adicionar</button>
                        <button type="submit" class="btn btn-default">Cancelar</button>
                    </div>
                </div>
                <div class="col-lg-2"></div>
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