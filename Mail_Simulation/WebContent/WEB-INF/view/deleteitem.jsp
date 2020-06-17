<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deleted Items</title>
</head>
<body bgcolor="#E6E6FA">
<center>
<h3><a href="inbox">Inbox</a>|
<a href="sentitem">Sent items</a>|
<a href="deleteitem">Delete items</a>|
<a href="draft">Draft Mails</a>|
<a href="composemail">Compose Mail</a>|
<a href="logout">Logout</a><br>
${msg }
<h1>Deleted items</h1>
<table border="1px" style="text-align:center;">
    <tr>
      <th>Send By</th>
      <th>Subject</th>
      </tr>
      <c:forEach var="alist" items="${From_id }">
      <tr>
        <td><c:out value="${alist.getSentby() }"/></td>
         <td><a href="mail?id=+${alist.getId() }+"><c:out value="${alist.getSubject() }"/></a></td>
        </tr>
        </c:forEach>
        </table>
        </center>
</body>
</html>