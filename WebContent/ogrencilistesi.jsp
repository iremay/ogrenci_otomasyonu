<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Ogrenci Bilgi Sistemi</title>
</head>


<body style="background-color:#e6e6e6">
<div class="container">

<div class="text-center" style="font-size:300%;">OGRENCI BILGI SISTEMI</div>


<br></br>
 <div class="row">
<div class="col-8 col-sm-3">
<div class="list-group">
	<a class="nav-link" href="./anasayfa" class="list-group-item list-group-item-action active">Ana Sayfa</a>
    <a class="nav-link" href="./yenikayit" class="list-group-item list-group-item-action active">Ogrenci Kaydi</a>
    <a class="nav-link" href="./list" class="list-group-item list-group-item-action active">Ogrenci Listesi</a>
     <a class="nav-link" href="./Logout" class="list-group-item list-group-item-action active">Cikis</a>
</div>
</div>
  <div class="col-8 col-sm-9">
   <table  border="1" class="table" >
  
    <caption  class="font-weight-bold"> Ogrenci Listesi</caption>
      <thead class="thead-dark">
        <tr>
           <th scope="col">ID</th>
           <th scope="col">Ad</th>
           <th scope="col">Soyad</th>
           <th scope="col">Bolum</th>
           <th scope="col">Islem</th>
       </tr>
         
          <c:forEach var="ogrenci" items="${ogrencilistesi}">
                <tr>
                    <td><c:out value="${ogrenci.id}" /></td>
                    <td><c:out value="${ogrenci.ad}" /></td>
                    <td><c:out value="${ogrenci.soyad}" /></td>
                    <td><c:out value="${ogrenci.bolum}" /></td>
                    <td>
                    <button type="button" class="btn btn-light btn-sm">
                       <a href="./guncelle?id=<c:out value='${ogrenci.id}' />" >Duzenle</a>
                       &nbsp;&nbsp;&nbsp;&nbsp;
                      </button>
                       <button type="button" class="btn btn-light btn-sm">
                       <a href="./sil?id=<c:out value='${ogrenci.id}' />" >Sil</a>     
                       </button>                
                   </td>               
                </tr>          
         </c:forEach>
   </table>
  </div> 
 
  </div>  
 </div>
</body>
</html>