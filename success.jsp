<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Thank you Your bill is generated
</body>
</html>
 --%>

<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title> database</title>
</head>
<body>
    <h1>your Bill is generated successfully!!!</h1>
    <sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver" 
    url="jdbc:mysql://localhost:3306/electricity_billing" user="root" password="PYM@123$" />

    <sql:query var="result" dataSource="${dataSource}">
        SELECT * FROM meter_readings;
    </sql:query>

        <c:forEach var="row" items="${result.rows}">
                ID:-<c:out value="${row.id}" />&nbsp;&nbsp;&nbsp;
                previous reading:- <c:out value="${row.previous_reading}"/>&nbsp;&nbsp;&nbsp;
                current_reading:- <c:out value="${row.current_reading}"/>&nbsp;&nbsp;&nbsp;
                units_consumed:- <c:out value="${row.units_consumed}"/>&nbsp;&nbsp;&nbsp;
                rate_per_unit:- <c:out value="${row.rate_per_unit}"/>&nbsp;&nbsp;&nbsp;
               bill_amount:- <c:out value="${row.bill_amount}"/><br>

        </c:forEach>
   
</body>
</html>
 --%>
 <%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Thank you Your bill is generated
</body>
</html>
 --%>

<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title> database</title>
</head>
<body>
    <h1>your Bill is generated successfully!!!</h1>
    <sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver" 
    url="jdbc:mysql://localhost:3306/electricity_billing" user="root" password="PYM@123$" />

    <sql:query var="result" dataSource="${dataSource}">
        SELECT * FROM meter_readings;
    </sql:query>

        <c:forEach var="row" items="${result.rows}">
                ID:-<c:out value="${row.id}" />&nbsp;&nbsp;&nbsp;
                previous reading:- <c:out value="${row.previous_reading}"/>&nbsp;&nbsp;&nbsp;
                current_reading:- <c:out value="${row.current_reading}"/>&nbsp;&nbsp;&nbsp;
                units_consumed:- <c:out value="${row.units_consumed}"/>&nbsp;&nbsp;&nbsp;
                rate_per_unit:- <c:out value="${row.rate_per_unit}"/>&nbsp;&nbsp;&nbsp;
               bill_amount:- <c:out value="${row.bill_amount}"/><br>

        </c:forEach>
   
</body>
</html>
 --%>
 
 
 
 
 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Database</title>
</head>
<style>
	td{
		text-align:center;
	}
</style>
<body>
    <h1>Your Bill is generated successfully!!!</h1>
    <sql:setDataSource var="dataSource" driver="com.mysql.cj.jdbc.Driver" 
    url="jdbc:mysql://localhost:3306/electricity_billing" user="root" password="PYM@123$" />

    <sql:query var="result" dataSource="${dataSource}">
    select * from meter_readings order by id desc limit 1;
    </sql:query>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Previous Reading</th>
            <th>Current Reading</th>
            <th>Units Consumed</th>
            <th>Rate per Unit</th>
            <th>Bill Amount</th>
        </tr>

        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}" /></td>
                <td><c:out value="${row.previous_reading}" /></td>
                <td><c:out value="${row.current_reading}" /></td>
                <td><c:out value="${row.units_consumed}" /></td>
                <td><c:out value="${row.rate_per_unit}" /></td>
                <td><c:out value="${row.bill_amount}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
 
 
 
 
 
 
 