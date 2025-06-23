<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Product Of Day</title>
    </head>
    <body>
        <form action="sp">
            <input type="hidden" name="branchId" value="${param.branchId}">
            <input type="hidden" name="date" value="${param.date}">
        </form>
    <c:if test="${not empty dto}">
        <table border="1">
            <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${dto}" var="p">
                <tr>
                    <td>${p.tensp}</td>
                    <td>${p.soluong}</td>
                    <td>${p.dongia}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </c:if>
    <c:if test="${empty dto}">
        <p>Không có sản phẩm</p>
    </c:if>
</body>
</html>
