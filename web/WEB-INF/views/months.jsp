
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Teste</title>

        <!-- Bootstrap -->
        <link href="<c:url value="/css/bootstrap.min.css"/>" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="container">
        <style>          
            .col-lg-3 {
                background: #2989d8;
                border: #e8e8e8 solid 1px;
                height: 50px;
            }
            
            a{
                color: #fff;
            }
            
            a:hover{
                text-decoration: none;
                color: #fff;
            }

        </style>
         
        <div class="col-lg-12">
            <a href="<c:url value="/calendario/${year}/01"/>" class="option-month"><div class="col-lg-3 col-xs-6">Janeiro</div></a>
            <a href="<c:url value="/calendario/${year}/02"/>" class="option-month"><div class="col-lg-3 col-xs-6">Fevereiro</div></a>
            <a href="<c:url value="/calendario/${year}/03"/>" class="option-month"><div class="col-lg-3 col-xs-6">Março</div></a>
            <a href="<c:url value="/calendario/${year}/04"/>" class="option-month"><div class="col-lg-3 col-xs-6">Abril</div></a>
            <a href="<c:url value="/calendario/${year}/05"/>" class="option-month"><div class="col-lg-3 col-xs-6">Maio</div></a>
            <a href="<c:url value="/calendario/${year}/06"/>" class="option-month"><div class="col-lg-3 col-xs-6">Junho</div></a>
            <a href="<c:url value="/calendario/${year}/07"/>" class="option-month"><div class="col-lg-3 col-xs-6">Julho</div></a>
            <a href="<c:url value="/calendario/${year}/08"/>" class="option-month"><div class="col-lg-3 col-xs-6">Agosto</div></a>
            <a href="<c:url value="/calendario/${year}/09"/>" class="option-month"><div class="col-lg-3 col-xs-6">Setembro</div></a>
            <a href="<c:url value="/calendario/${year}/10"/>" class="option-month"><div class="col-lg-3 col-xs-6">Outubro</div></a>
            <a href="<c:url value="/calendario/${year}/11"/>" class="option-month"><div class="col-lg-3 col-xs-6">Novembro</div></a>
            <a href="<c:url value="/calendario/${year}/12"/>" class="option-month"><div class="col-lg-3 col-xs-6">Dezembro</div></a>
        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="<c:url value="/js/jquery.min.js"/>"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="<c:url value="/js/bootstrap.min.js"/>"></script>

    </body>
</html>
