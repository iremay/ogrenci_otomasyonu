<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Ogrenci Listesi</title>
</head>
<body style="background-color:#e6e6e6">
<div class="text-center" style="font-size:300%;">OGRENCI BILGI SISTEMI</div>
 <br></br>

<ul class="nav flex-column">     
     <li class="nav-item">
          <a class="nav-link" href="./yenikayit">Ogrenci Kaydi</a>
            &nbsp;&nbsp;&nbsp;
       </li>  <li class="nav-item">
           <a class="nav-link" href="./list">Ogrenci Listesi</a>
        </li>     
     
 </ul>
    <br></br>
    <div align="center">
        <table  border="1" class="table" >
          <caption> Ogrenci Listesi</caption>
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
                    <button type="button" class="btn btn-secondary btn-lg">
                       <a href="./guncelle?id=<c:out value='${ogrenci.id}' />" >Duzenle</a>
                       &nbsp;&nbsp;&nbsp;&nbsp;
                      </button>
                       <button type="button" class="btn btn-secondary btn-lg">
                       <a href="./sil?id=<c:out value='${ogrenci.id}' />" >Sil</a>     
                       </button>                
                   </td>               
                </tr>          
            </c:forEach>
        </table>
    </div>   

</body>
</html>