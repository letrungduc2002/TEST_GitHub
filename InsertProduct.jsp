<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Thêm sản phẩm mới</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f7f9fc;
                margin: 40px;
            }
            h2 {
                color: #333;
                margin-bottom: 20px;
            }
            table {
                background-color: white;
                border-collapse: collapse;
                width: 100%;
                max-width: 700px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                padding: 20px;
                border-radius: 8px;
            }
            td {
                padding: 10px;
            }
            tr:nth-child(even) {
                background-color: #f1f1f1;
            }
            input[type="text"],
            input[type="number"],
            input[type="date"],
            select {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }
            input[type="submit"] {
                background-color: #28a745;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                font-weight: bold;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #218838;
            }
            .error {
                color: #721c24;
                background-color: #f8d7da;
                border: 1px solid #f5c6cb;
                padding: 10px;
                margin-top: 20px;
                width: fit-content;
                border-radius: 5px;
            }
            strong {
                display: block;
                background-color: #e9ecef;
                padding: 10px;
                border-radius: 5px;
                margin-top: 15px;
            }
        </style>
    </head>
    <body>
        <h2>Thêm sản phẩm mới</h2>

        <form action="ip" method="post">
            <table>
                <tr><td>Tên sản phẩm:</td><td><input type="text" name="tensp" required></td></tr>
                <tr><td>Đơn vị tính:</td><td><input type="text" name="donvi" required></td></tr>
                <tr><td>Đơn giá:</td><td><input type="text" name="dongia" required></td></tr>
                <tr><td>Trạng thái:</td><td>
                        <select name="trangthai">
                            <option>Còn hàng</option>
                            <option>Hết hàng</option>
                        </select></td></tr>
                <tr>
                    <td>Loại sản phẩm:</td>
                    <td>
                        <select name="maloai" required>
                            <option value="">-- Chọn loại mặt hàng --</option>
                            <c:forEach var="c" items="${categories}">
                                <option value="${c.maloai}">${c.tenloai}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr><td colspan="2"><strong>Thông tin lô sản phẩm</strong></td></tr>
                <tr><td>Ngày nhập:</td><td><input type="date" name="ngaynhap" required></td></tr>
                <tr><td>Hạn sử dụng:</td><td><input type="date" name="hansudung" required></td></tr>
                <tr><td>Giá nhập:</td><td><input type="text" name="gianhap" required></td></tr>
                <tr><td>Số lượng:</td><td><input type="number" name="soluong" required></td></tr>
                <tr>
                    <td>Nhà cung cấp:</td>
                    <td>
                        <select name="mancc" required>
                            <option value="">-- Chọn nhà cung cấp --</option>
                            <c:forEach var="c" items="${sup}">
                                <option value="${c.mancc}">${c.tenncc}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <input type="submit" value="Thêm sản phẩm">
                        <a href="dpc" style="margin-left: 15px; text-decoration: none; padding: 10px 15px; background-color: #6c757d; color: white; border-radius: 4px;">
                            Quay lại
                        </a>
                    </td>
                </tr>
            </table>
        </form>

        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
    </body>
</html>

