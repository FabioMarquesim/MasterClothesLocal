<%-- 
    Document   : pedidoFinalizado
    Created on : 26/04/2016, 16:01:55
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Pedido Finalizado</title>
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
        <c:if test="${pfim == null || pfisica == null}">
            <c:redirect url="index.jsp"></c:redirect>
        </c:if>
        <!--Section
        ========================-->
        <section>
            <article>
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">
                        <h1>Pedido Finalizado</h1>
                        <hr>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">
                        <h2>Código do Pedido: ${pfim.id_pedido}</h2>
                        <h2>Usuario: ${pfim.usuario.nome_usuario}</h2>
                        <c:forEach var="i" items="${prodAdds}">
                            <p>Nome: ${i.produto.nome} / Quantidade: ${i.quantidade} / R$ ${i.produto.preco*i.quantidade}</p>
                        </c:forEach>
                        <h2>Frete: R$ 50.00</h2>    
                        <h2>Valor Pago: ${pfim.precoTotal+50}</h2>
                        <a href="Controller?command=pedido.concluido"><button class="btn btn-success">Concluido</button></a>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
            </article>
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
