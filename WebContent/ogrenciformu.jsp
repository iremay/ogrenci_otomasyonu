<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ogrenci Bilgi Sistemi</title>
</head>
<body>
<center>
        <h1>Ogrenci Bilgi Sistemi</h1>
        <h2>
            <a href="/new">Ogrenci Kaydi</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/list">Ogrenci Listesi</a>
             
        </h2>
        </center>
    <div align="center">
        <c:if test="${ogrenci != null}">
            <form action="guncelle" method="post">
        </c:if>
        <c:if test="${ogrenci == null}">
            <form action="ekle" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    <c:if test="${ogrenci != null}">
                        Ogrenci Guncelle
                    </c:if>
                    <c:if test="${ogrenci  == null}">
                        Yeni Ogrenci Kaydi
                    </c:if>
                </h2>
            </caption>
                <c:if test="${ogrenci != null}">
                    <input type="hidden" name="id" value="<c:out value='${ogrenci.id}' />" />
                </c:if>           
            <tr>
                <th>Ad:</th>
                <td>
                    <input type="text" name="ad" size="45"
                            value="<c:out value='${ogrenci.ad}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Soyad: </th>
                <td>
                    <input type="text" name="soyad" size="45"
                            value="<c:out value='${ogrenci.soyad}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Bolum: </th>
                <td>
                    <input type="text" name="bolum" size="5"
                            value="<c:out value='${ogrenci.bolum}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
     </form>
  </div>   

</body>
</html>