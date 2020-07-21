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
<div class="container">
	<div class="text-center" style="font-size:300%;">OGRENCI BILGI SISTEMI</div>
	 <br></br>
	 
<div class="row">
<div  class="col">
<div class="list-group">
    <a class="nav-link" href="./yenikayit" class="list-group-item list-group-item-action active">Ogrenci Kaydi</a>
    <a class="nav-link" href="./list" class="list-group-item list-group-item-action active">Ogrenci Listesi</a>
</div>
 </div>
 
<div  class="col">

        <c:if test="${ogrenci != null}">
            <form action="duzenle" method="post">
        </c:if>
        <c:if test="${ogrenci == null}">
            <form action="ekle" method="post">
        </c:if>
    
            <caption >
               
                    <c:if test="${ogrenci != null}" >
                        Ogrenci Guncelle
                    </c:if>
                    <c:if test="${ogrenci  == null}">
                        Yeni Ogrenci Kaydi
                    </c:if>
           
            </caption>
                <c:if test="${ogrenci != null}">
                    <input type="hidden" name="id" value="<c:out value='${ogrenci.id}' />" />   
             </c:if>           
 <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Ad</label>    
    <input type="text" class="form-control" id="ad" name="ad" value="<c:out value='${ogrenci.ad}' />">

  </div>  
   <div class="form-group">
    <label for="exampleInputPassword1">Soyad</label>
    <input type="text" class="form-control" id="Soyad" name="soyad"  value="<c:out value='${ogrenci.soyad}' />">
  </div>
  <div class="form-group">
   <label class="form-check-label" for="exampleCheck1">Bolum</label>   
    <input type="text" class="form-control" id="Bolum" name="bolum"  value="<c:out value='${ogrenci.bolum}' />">
  </div>
  <button type="submit" class="btn btn-primary">Kaydet</button>
</form>
            
 
</div>    
 </div>  
</div>
</body>
</html>