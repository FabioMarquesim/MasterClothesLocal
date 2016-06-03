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
                    <c:choose>
                        <c:when test="${pfisica != null && prodAdds != null}">
                            <a href="Controller?command=pedido.finalizar&id_pfisica=${pfisica.id_pfisica}"><button class="btn my-btn">Finalizar Compra</button></a>
                        </c:when>
                        <c:otherwise>
                            <a href="#"><button class="btn my-btn" disabled="disabled">Finalizar Compra</button></a>
                        </c:otherwise>
                    </c:choose>
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
            <c:choose>
                <c:when test="${prodAdds == null}">
                    <div class="row">
                        <div class="col-lg-1"></div> 
                        <div class="col-lg-10">
                            <h2 class="center-block">Nenhum Produto Selecionado</h2>
                        </div> 
                        <div class="col-lg-1"></div> 
                    </div>
                </c:when>
                <c:otherwise>
                    <c:forEach var="i" items="${prodAdds}">
                        <div class="row">
                            <div class="col-lg-1"></div>
                            <div class="col-lg-2">
                                <p>
                                    ${i.produto.descricao}
                                </p>
                            </div>
                            <div class="col-lg-2">
                                <img class="img-sacola" src="img/sem-foto_800.jpg" alt=""/>
                            </div>
                            <div class="col-lg-1">
                                <label for="qtde">Quantidade:</label>
                                <input class="form-control" id="qtde" name="qtde" type="text" value="${i.quantidade}" disabled="disabled" />
                            </div>
                            <div class="col-lg-3"></div>
                            <div class="col-lg-2">
                                <!--<input type="hidden" name="id_produto" value="${i.produto.id_produto}" />
                                <input type="hidden" name="command" value="pedido.alterar"/>
                                <input type="submit" class="btn my-btn" value="Alterar" disabled="disabled" />
                                <a href="Controller?command=pedido.remover&id_produto=${i.produto.id_produto}"><button class="btn my-btn" disabled="disabled">Remover</button></a>
                                -->
                                <p class="btn-item-compra"><span class="preco-sacola">R$ ${i.total}</span></p>
                            </div>
                            <div class="col-lg-1"></div>     

                        </div>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
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
                    <p class="btn-item-compra"><span class="preco-sacola">R$ ${sub}</span></p>   
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
                        <!--<input type="text" placeholder="CEP" class="form-control" aria-label="..." disabled="disabled">
                        <div class="input-group-btn">
                            <button class="btn" type="submit" disabled="disabled"><i class="glyphicon glyphicon-search"></i></button>
                        </div>-->
                        <h3>Preço Único</h3>
                    </div>
                </div>
                <div class="col-lg-4"></div>
                <div class="col-lg-2">
                    <p class="btn-item-compra"><span class="preco-sacola">R$50,00</span></p>
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
                    <p class="btn-item-compra"><span class="preco-thumb-total">R$ ${sub+50}</span></p>   
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
                    <a href="index.jsp"><button class="btn my-btn">Continuar Comprando</button></a>
                </div>
                <div class="col-lg-6"></div>
                <div class="col-lg-2">
                    <c:choose>
                        <c:when test="${pfisica != null && prodAdds != null}">
                            <a href="Controller?command=pedido.finalizar&id_pfisica=${pfisica.id_pfisica}"><button class="btn my-btn">Finalizar Compra</button></a>
                        </c:when>
                        <c:otherwise>
                            <a href="#"><button class="btn my-btn" disabled="disabled">Finalizar Compra</button></a>
                        </c:otherwise>
                    </c:choose>
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