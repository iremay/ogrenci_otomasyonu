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
<body>
    <div style="text-align: center">
        <h1>OGRENCI BILGI SISTEMI</h1>
        <br></br>
        <form action="login" method="post">
        <div class="form-group">
            <label for="username">Kullanici adi:</label>
            <input name="username" size="30" />
         </div> 
          
         <div class="form-group">
            <label for="password">Sifre:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            
          </div>           
            <button type="submit">Giris</button>
        </form>
    </div>
</body>
<script type="text/javascript">
 
    $(document).ready(function() {
        $("#login").validate({
            rules: {
                username: {
                    required: true,
                    username: true
                },
         
                password: "required",
            },
             
            messages: {
                username: {
                    required: "Please enter username",
                    username: "Please enter a valid username"
                },
                 
                password: "Please enter password"
            }
        });
 
    });
</script>
</html>