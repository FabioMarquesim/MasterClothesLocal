<%-- 
    Document   : cadastro
    Created on : 15/04/2016, 16:15:34
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Cadastro - Master Clothes</title>
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
                    <div class="col-lg-8">
                        <h1>Cadastro</h1>
                        <hr>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-4">
                        <form action="Controller" method="POST">
                        <!--Nome-->
                        <label for="firstName">Nome:</label>
                        <input class="form-control" id="firstName" name="firstName" placeholder="Nome" type="text" required>
                        <!--Data de Nascimento-->
                        <label for="date_nas">Data de Nascimento:</label>
                        <div class='input-group date' id='datetimepicker1'>
                            <input type='text' id="date_nas" name="date_nas" class="form-control" />
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                        <!--NOME_USUARIO-->
                        <label for="username">Nome de Usuário:</label>
                        <input class="form-control" id="username" name="username" placeholder="Username" type="text" required>
                        <!--EMAIL-->
                        <label for="email">Email:</label>
                        <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                        <!--Senha-->
                        <label for="pwd">Senha:</label>
                        <input class="form-control" id="pwd" name="pwd" placeholder="Senha" type="password" required>
                    </div>
                    <div class="col-lg-4">
                        <!--Sobrenome-->
                        <label for="lastName">Sobrenome:</label>
                        <input class="form-control" id="lastName" name="lastName" placeholder="Sobrenome" type="text" required>
                        <!--Sexo-->
                        <label for="genre">Sexo:</label>
                        <select class="form-control" id="genre" name="genre">
                            <option>Homem</option>
                            <option>Mulher</option>
                            <option>Outro</option>
                        </select>
                        <!--Telefone-->
                        <label for="phone">Telefone:</label>
                        <input class="form-control" id="phone" name="phone" placeholder="Telefone" type="text" required>
                        <!--Confirma_EMAIL-->
                        <label for="email2">Confirmar Email:</label>
                        <input class="form-control" id="email2" name="email2" placeholder="Confirmar Email" type="email" required>
                        <!--Confirmar Senha-->
                        <label for="pwd2">Confirmar Senha:</label>
                        <input class="form-control" id="pwd2" name="pwd2" placeholder="Confirmar Senha" type="password" required>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <h2>Endereço</h2>
                        <hr>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-4">
                        <!--CEP-->
                        <label for="zipcode">CEP:</label>
                        <input class="form-control" id="zipcode" name="zipcode" placeholder="CEP" type="text" required>
                        <!--Complemento-->
                        <label for="complement">Complemento:</label>
                        <input class="form-control" id="complement" name="complement" placeholder="Complemento" type="text">
                        <!--Bairro-->
                        <label for="nbhood">Bairro:</label>
                        <input class="form-control" id="nbhood" name="nbhood" placeholder="Bairro" type="text" required>
                        <!--Estado-->
                        <label for="state">Estado:</label>
                        <input class="form-control" id="state" name="state" placeholder="Estado" type="text" required>
                    </div>
                    <div class="col-lg-4">
                        <!--Logradouro-->
                        <label for="street">Logradouro:</label>
                        <input class="form-control" id="street" name="street" placeholder="Logradouro" type="text" required>
                        <!--Número-->
                        <label for="adrnumber">Número:</label>
                        <input class="form-control" id="adrnumber" name="adrnumber" placeholder="Número" type="number" required>
                        <!--Cidade-->
                        <label for="city">Cidade:</label>
                        <input class="form-control" id="city" name="city" placeholder="Cidade" type="text" required>
                        <!--País-->	
                        <label for="country">País:</label>
                        <input class="form-control" id="country" name="country" placeholder="País" type="text" required>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-2">
                        <div class="btn-group">
                            <input type="hidden" name="command" value="user.cadastrar"/>
                            <button type="submit" class="btn btn-success btn-lg btn-item-compra" value="cadastrar">Cadastrar</button>
                        </div>
                        </form>
                    </div>
                    <div class="col-lg-8"></div>
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
        <!--Minha Data-->
        <script src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>       
    </body>
</html>