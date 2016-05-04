<%-- 
    Document   : vendas
    Created on : 26/04/2016, 16:00:23
    Author     : fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Vendas</title>
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
                    <h1>Vendas</h1>                    
                </div>
                <div class="col-lg-9"></div>
            </div>

            <!--Quebra de linha-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <hr>
                </div>
                <div class="col-lg-1"></div>                
            </div>

            <!--Resumo-->
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-5 my-border">
                    <h3>Resumo</h3>
                    <table class="table table-responsive">
                        <tbody>
                            <tr>
                                <td>Hoje: (0 vendas)</td>
                                <td>R$ 00,00</td>
                            </tr>
                            <tr>
                                <td>Ontem: (0 vendas)</td>
                                <td>R$ 00,00</td>
                            </tr>
                            <tr>
                                <td>Este mês: (0 vendas)</td>
                                <td>R$ 00,00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-lg-5 my-border group-vendas">
                    <h3>Hoje</h3>
                    <div id="chart_div" style="width: 500px; height: 200px;"></div>
                </div>
                <div class="col-lg-1"></div>                
            </div>
            <div class="row my-btn">
                <div class="col-lg-1"></div>
                <div class="col-lg-5 my-border">
                    <h3>Ontem</h3>
                    <div id="chart_div2" style="width: 500px; height: 200px;"></div>
                </div>
                <div class="col-lg-5 my-border group-vendas">
                    <h3>Este Mês</h3>
                    <div id="chart_div3" style="width: 500px; height: 200px;"></div>
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
        <!--Chart-->
        <!--Load the AJAX API-->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Hora','Camiseta','Camisa','Blusa','Calça','Bermuda','Acessório'],
                    ['09:00', 100, 50, 60, 30, 95, 80],
                    ['10:00', 20, 40, 90, 50, 65, 10],
                    ['11:00', 30, 60, 10, 10, 25, 60],
                    ['12:00', 90, 10, 60, 70, 93, 20]
                ]);

                var options = {
                    hAxis: {title: 'Hora', titleTextStyle: {color: '#333'}},
                    vAxis: {minValue: 0}
                };

                var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
                chart.draw(data, options);
                var chart = new google.visualization.AreaChart(document.getElementById('chart_div2'));
                chart.draw(data, options);
                var chart = new google.visualization.AreaChart(document.getElementById('chart_div3'));
                chart.draw(data, options);
            }
        </script>
    </body>
</html>
