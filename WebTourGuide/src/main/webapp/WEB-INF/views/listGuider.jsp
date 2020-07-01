<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
</head>
<body>
<h1>Person List</h1>
    
    <br/><br/>
    <div>
      <table border="1">
        <tr>
          <th>Rating</th>
          <th>Birthday</th>
        </tr>
        <c:forEach  items="${lsGuiderCustom}" var ="lsGuiderCustom">
        <tr>
          <td>${lsGuiderCustom.rating}</td>
          <td>${lsGuiderCustom.birthday}</td>
        </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</body>
</html>