<%-- 
    Document   : minha_conta
    Created on : 26/04/2016, 15:57:01
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>My Template</title>
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
        <c:if test="${cliente==null}">
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
                        <a href="#" class="list-group-item">Ultimo Pedido</a>
                        <a href="#" class="list-group-item">Todos os Pedidos</a>
                    </div>
                </div>
                <div class="col-lg-9">
                    <h1>Minha Conta</h1>
                    <hr>
                    <article>
                        <!--Carrega Página-->
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula augue elementum ligula hendrerit aliquam. Etiam sit amet vestibulum est. Duis lacinia, risus vitae scelerisque placerat, orci felis bibendum lectus, nec ultrices est enim in tellus. Nulla neque nulla, porttitor sed velit blandit, suscipit vehicula turpis. Nunc auctor bibendum augue, sit amet faucibus turpis dictum vel. Suspendisse eu nunc eget nisi pellentesque iaculis ut eget velit. Ut in sapien quam. Praesent pulvinar imperdiet dui. Nunc risus lacus, feugiat rutrum porttitor ac, condimentum mattis metus. Ut non pretium lorem, vel elementum nisi. Donec tempor elementum arcu, sit amet facilisis enim. Morbi auctor a velit id gravida.</p>

                        <p>Ut ac lorem quis massa convallis maximus. Integer imperdiet convallis sapien id vulputate. Vivamus vitae augue et turpis ornare tempor vel non justo. In suscipit mauris sollicitudin dolor pulvinar, ut tempus ante hendrerit. Duis luctus risus enim, id elementum enim finibus ut. Pellentesque iaculis, mauris eget auctor ornare, massa velit condimentum felis, nec dapibus metus libero sed augue. Sed rutrum fermentum sagittis. Cras eget malesuada lacus. Nullam id risus sed ipsum mollis dictum a vitae tortor. Nullam hendrerit orci non neque ultricies, non consequat mauris sodales.</p>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis dolor et metus congue gravida nec ac purus. Cras rhoncus fermentum felis, nec posuere lacus porta vulputate. Sed scelerisque massa porttitor, imperdiet ipsum a, auctor odio. Nulla lorem justo, rutrum id imperdiet et, tristique quis urna. Mauris sit amet tortor aliquet, scelerisque sem eget, convallis elit. Cras convallis efficitur nisl sit amet accumsan. Vivamus nunc nisl, commodo in suscipit ut, elementum id tellus. Aenean quis vehicula enim, scelerisque efficitur elit. Vivamus viverra pulvinar risus et vehicula. Nam auctor ac elit sed tempus.</p>
                        
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis dolor et metus congue gravida nec ac purus. Cras rhoncus fermentum felis, nec posuere lacus porta vulputate. Sed scelerisque massa porttitor, imperdiet ipsum a, auctor odio. Nulla lorem justo, rutrum id imperdiet et, tristique quis urna. Mauris sit amet tortor aliquet, scelerisque sem eget, convallis elit. Cras convallis efficitur nisl sit amet accumsan. Vivamus nunc nisl, commodo in suscipit ut, elementum id tellus. Aenean quis vehicula enim, scelerisque efficitur elit. Vivamus viverra pulvinar risus et vehicula. Nam auctor ac elit sed tempus.</p>
                    </article>
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