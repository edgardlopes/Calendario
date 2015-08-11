<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
        <link href="<c:url value="/css/demo.css"/>" rel="stylesheet">
        <link href="<c:url value="/css/calendar.css"/>" rel="stylesheet">
        <link href="<c:url value="/css/custom_1.css"/>" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <style>
            @media(max-width: 880px){
                .empty-day{
                    display: none;
                }
            }

            @media(min-width: 880px){
                .fc-calendar{
                    margin-top: 50px;   
                }

                .calendar-header{
                    margin: 0 25px;
                }


                .calendar-controls{
                    float: right;
                }

                div.empty-day{
                    border: none;
                }
            }

            .day{
                height: 100%;
                width: 100%;
            }

            .month-title{
                top: 0;
            }
            
            .btn-primary{
                background: rgba(100, 100, 100, 0.5);
            }

            .btn-primary:hover{
                background: rgba(100, 100, 100, 0.8);
            }
            
            .fc-row > div:hover{
                background: rgba(200, 200, 200, 0.3);
            }
        </style>
        <div class="calendar-wrapper">
            <div class="calendar-header">
                <h3>
                    <span>${monthAsString}</span>
                    <span>${year}</span>
                    <span class="calendar-controls">
                        <a href="<c:url value="/calendario/${previousYear}/${previousMonth}"/>" class="btn btn-primary"><span class="glyphicon glyphicon-triangle-left"></span></a>
                        <a href="<c:url value="/calendario/${nextYear}/${nextMonth}"/>" class="btn btn-primary"><span class="glyphicon glyphicon-triangle-right"></span></a>
                        <a href="<c:url value="/calendario/${currentYear}/${currentMonth}"/>" class="btn btn-primary"><span class="glyphicon glyphicon-triangle-bottom"></span></a>
                    </span>
                </h3>

            </div>
            <div class="fc-calendar 
                 <c:if test="${fn:length(weekList) eq 6}"> fc-six-rows</c:if> 
                 <c:if test="${fn:length(weekList) eq 4}"> fc-four-rows</c:if> 
                 <c:if test="${fn:length(weekList) eq 5}"> fc-five-rows</c:if>" >
                     <div class="fc-head">
                         <div>Domingo</div>
                         <div>Segunda</div>
                         <div>Terça</div>
                         <div>Quarta</div>
                         <div>Quinta</div>
                         <div>Sexta</div>
                         <div>Sabado</div>
                     </div>
                     <div class="fc-body">
                     <c:forEach var="week" items="${weekList}">
                         <div class="fc-row">
                             <c:forEach var="day" items="${week}">
                                 <div class="<c:if test="${empty day.day}"> empty-day</c:if> ">    
                                     <a href="<c:url value="/calendario/${year}/${month}/${day.day}"/>">
                                         <div class="day">

                                             <span class="fc-date">${day.day}</span>
                                             <span class="fc-weekday">${day.dayOfWeekShort}</span>

                                         </div>
                                     </a>
                                 </div>

                             </c:forEach>
                         </div>
                     </c:forEach>
                 </div>
            </div>

        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="<c:url value="js/jquery.min.js"/>"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="<c:url value="js/bootstrap.min.js"/>"></script>
    </body>
</html>