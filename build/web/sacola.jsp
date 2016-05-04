<%-- 
    Document   : sacola
    Created on : 26/04/2016, 15:58:16
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Sacola</title>
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
                    <h1>Sacola</h1>                    
                </div>
                <div class="col-lg-6"></div>
                <div class="col-lg-2">
                    <button class="btn my-btn" type="submit">Finalizar Compra</button>
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

            <!--Barra de itens-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec nisl lacinia, tristique ante quis, elementum ligula. Mauris gravida felis vitae nisi tincidunt lacinia. Etiam sagittis erat nisl, ac pulvinar nulla imperdiet a.
                    </p>
                </div>
                <div class="col-lg-2">
                    <img class="img-sacola" src="img/ck_01.jpg" alt=""/>
                </div>
                <div class="col-lg-1">
                    <label for="qtde">Quantidade:</label>
                    <input class="form-control" id="qtde" name="qtde" type="number" value="1" required>
                </div>
                <div class="col-lg-3"></div>
                <div class="col-lg-2">
                    <button class="btn my-btn" type="submit">Remover</button>
                    <p class="btn-item-compra"><span class="preco-sacola">R$00,00</span></p>
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

            <!--Subtotal-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <h3>Subtotal</h3>                    
                </div>
                <div class="col-lg-6"></div>
                <div class="col-lg-2">
                    <p class="btn-item-compra"><span class="preco-sacola">R$00,00</span></p>   
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

            <!--Frete-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <h3>Frete</h3>                    
                </div>
                <div class="col-lg-2">
                    <div class="input-group">
                        <input type="text" placeholder="CEP" class="form-control" aria-label="...">
                        <div class="input-group-btn">
                            <button class="btn" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4"></div>
                <div class="col-lg-2">
                    <p class="btn-item-compra"><span class="preco-sacola">R$00,00</span></p>
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

            <!--Total-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <h3>Total</h3>                    
                </div>
                <div class="col-lg-6"></div>
                <div class="col-lg-2">
                    <p class="btn-item-compra"><span class="preco-thumb-total">R$00,00</span></p>   
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

            <!--Fim-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <button class="btn my-btn" type="submit">Continuar Comprando</button>
                </div>
                <div class="col-lg-6"></div>
                <div class="col-lg-2">
                    <button class="btn my-btn" type="submit">Finalizar Compra</button>
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