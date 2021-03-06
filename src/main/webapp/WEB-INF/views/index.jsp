<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- define angular app -->
<!DOCTYPE html>
<html ng-app="scotchApp">
    <head>
        <!-- SCROLLS -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />
        <link rel="stylesheet" href="//cdn.rawgit.com/angular-ui/bower-ui-grid/master/ui-grid.min.css" />
        <link rel="stylesheet" href="<c:url value='/static/css/app.css' />" />
        <!-- SPELLS -->
        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-route.js"></script>
        <script src="https://cdn.rawgit.com/angular-ui/bower-ui-grid/master/ui-grid.min.js"></script>
        <script src="<c:url value='/static/js/script.js' />"></script>
        <script src="<c:url value='/static/js/controller/home_controller.js' />"></script>
        <script src="<c:url value='/static/js/controller/about_controller.js' />"></script>
        <script src="<c:url value='/static/js/controller/contact_controller.js' />"></script>
        <script src="<c:url value='/static/js/service/home_service.js' />"></script>
    </head>

    <!-- define angular controller -->
    <body>
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/">Currency Analizer</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#/"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="#about"><i class="fa fa-shield"></i> About</a></li>
                    <li><a href="#contact"><i class="fa fa-comment"></i> Contact</a></li>
                </ul>
            </div>
        </nav>
        <div id="main">
            <div ng-view></div>
        </div>
    </body>
</html>
