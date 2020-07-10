<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ogrenci Listesi</title>
</head>
<body>
<h1>Ogrenci Bilgi Sistemi</h1>
        <h2>
            <a href="/new">Ogrenci Kaydi</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/list">Ogrenci Listesi</a>
             
        </h2>
   
    <div align="center">
        <table  border="1">
            <caption> Ogrenci Listesi</caption>
            <tr>
                <th>ID</th>
                <th>Ad</th>
                <th>Soyad</th>
                <th>Bölüm</th>
                <th>Islem</th>
                
            </tr>
            <c:forEach var="ogrenci" items="${ogrencilistesi}">
                <tr>
                    <td><c:out value="${ogrenci.id}" /></td>
                    <td><c:out value="${ogrenci.ad}" /></td>
                    <td><c:out value="${ogrenci.soyad}" /></td>
                    <td><c:out value="${ogrenci.bolum}" /></td>
                    <td>
                       <a href="/edit?id=<c:out value='${ogrenci.id}' />" >Düzenle</a>
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="/delete?id=<c:out value='${ogrenci.id}' />" >Sil</a>                     
                   </td>               
                </tr>          
            </c:forEach>
        </table>
    </div>   

</body>
</html>