<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Ogrenci Bilgi Sistemi</title>
</head>
<body style="background-color:#e6e6e6;">
	<div class="text-center" style="font-size:300%;">OGRENCI BILGI SISTEMI</div>
	 <br></br>
<div>	 

<ul class="nav flex-column">     
     <li class="nav-item">
          <a class="nav-link" href="./yenikayit">Ogrenci Kaydi</a>
            &nbsp;&nbsp;&nbsp;
       </li>  <li class="nav-item">
           <a class="nav-link" href="./list">Ogrenci Listesi</a>
        </li>     
     
 </ul>
 
    
    <div align="center">
        <c:if test="${ogrenci != null}">
            <form action="duzenle" method="post">
        </c:if>
        <c:if test="${ogrenci == null}">
            <form action="ekle" method="post">
        </c:if>
        <table border="1">
            <caption>
               
                    <c:if test="${ogrenci != null}">
                        Ogrenci Guncelle
                    </c:if>
                    <c:if test="${ogrenci  == null}">
                        Yeni Ogrenci Kaydi
                    </c:if>
           
            </caption>
                <c:if test="${ogrenci != null}">
                    <input type="hidden" name="id" value="<c:out value='${ogrenci.id}' />" />   
             </c:if>           
             <br></br>
            <tr>
                <th>Ad:</th>
                <td>
                    <input type="text" name="ad" size="45" style="background-color:#e6e6e6;"
                            value="<c:out value='${ogrenci.ad}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Soyad: </th>
                <td>
                    <input type="text" name="soyad" size="45" style="background-color:#e6e6e6;"
                            value="<c:out value='${ogrenci.soyad}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Bolum: </th>
                <td>
                    <input type="text" name="bolum" size="45" style="background-color:#e6e6e6;"
                            value="<c:out value='${ogrenci.bolum}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Kaydet" />
                </td>
            </tr>
            </form>
       </table>
     
</div>    
  </div>   

</body>
</html>