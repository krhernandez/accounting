<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accounting</title>
        <link href="css/basicStyle.css" rel="stylesheet">
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
            select number,name from accounts
        </sql:query>
        <div id="divLstLV1">
            <h1>Lista LV1</h1>
            <form action="JavaScript:void(0);" id="lstALV1" method="POST">
                <select name="lstAccountingLV1">
                    <c:forEach var="values" items="${result.rows}">
                        <option value="${values.number}">${values.name}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="Update" />
            </form>            
        </div>
        <div id="divLstLV2" hidden="">
            <h1>Lista LV2</h1>
        </div>
        <div id="divLstLV3" hidden="">
            <h1>Lista LV3</h1>
        </div>
    </body>
</html>
