<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="listLV2" scope="request" class="com.iucesmag.model.ListData" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LV3</title>
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
            select number,name from accounts where handler='<% out.println(listLV2.getData());%>'
        </sql:query>
        <form>
            <select name="lstAccountingLV">
                <c:forEach var="values" items="${result.rows}">
                    <option value="${values.number}">${values.name}</option>
                </c:forEach>
            </select>
        </form>
    </body>
</html>
