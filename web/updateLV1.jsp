<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="list" scope="request" class="com.iucesmag.model.ListData" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery.js"></script>
        <script src="js/updateList.js"></script>
    </head>
    <body>
        <sql:setDataSource 
            var="connection" 
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/accounting"
            user="root"
            password=""
            />
        <sql:query var="result" dataSource="${connection}">
            select number,name from accounts where handler='<% out.println(list.getData());%>'
        </sql:query>
        <form action="JavaScript:void(0);" id="lstALV2" method="POST">
            <select name="lstAccountingLV2">
                <c:forEach var="values" items="${result.rows}">
                    <option value="${values.number}">${values.name}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Update" />
        </form> 
    </body>
</html>
