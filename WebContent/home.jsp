<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta charset="utf-8">
<title>Ogrenci Bilgi Sistemi</title>
</head>
<body style="background-color:#e6e6e6;">
    <div style="text-align: center">
        <h1>Ogrenci Bilgi Sistemi</h1>
        <b>${user.username} (${user.password})</b>
        <br><br>
          </div>
         <div class="row">
<div  class="col">
<div class="list-group">
    <a class="nav-link" href="./yenikayit" class="list-group-item list-group-item-action active">Ogrenci Kaydi</a>
    <a class="nav-link" href="./list" class="list-group-item list-group-item-action active">Ogrenci Listesi</a>
    <a class="nav-link" href="/logout" class="list-group-item list-group-item-action active">Cikis</a>
</div>
 </div>
   </div>
  
</body>
</html>