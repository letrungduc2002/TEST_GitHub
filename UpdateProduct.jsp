<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Cập nhật sản phẩm</title>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                background-color: #f0f2f5;
                padding: 40px;
            }

            h2 {
                color: #333;
                margin-bottom: 20px;
            }

            form {
                background-color: #fff;
                padding: 25px 30px;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
                max-width: 800px;
                margin: auto;
            }

            table {
                width: 100%;
            }

            td {
                padding: 10px 8px;
                vertical-align: top;
            }

            input[type="text"],
            input[type="date"],
            input[type="number"],
            select {
                width: 100%;
                padding: 8px 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 14px;
            }

            input[type="submit"] {
                background-color: #28a745;
                color: white;
                padding: 10px 20px;
                border: none;
                font-weight: bold;
                border-radius: 4px;
                cursor: pointer;
                margin-top: 10px;
            }

            input[type="submit"]:hover {
                background-color: #218838;
            }

            strong {
                display: block;
                margin-top: 20px;
                color: #007bff;
                font-size: 16px;
            }

            p {
                color: red;
                font-weight: bold;
                margin-top: 15px;
            }
        </style>
    </head>
    <body>

        <h2>Cập nhật sản phẩm</h2>

        <form action="up" method="post">
            <input type="hidden" name="masp" value="${product.masp}" />
            <table>
                <tr>
                    <td>Tên sản phẩm:</td>
                    <td><input type="text" name="tensp" value="${product.tensp}" required /></td>
                </tr>
                <tr>
                    <td>Đơn vị:</td>
                    <td><input type="text" name="donvi" value="${product.donvi}" required /></td>
                </tr>
                <tr>
                    <td>Đơn giá:</td>
                    <td><input type="text" name="dongia" value="${product.dongia}" required /></td>
                </tr>
                <tr>
                    <td>Trạng thái:</td>
                    <td><input type="text" name="trangthai" value="${product.trangthai}" required /></td>
                </tr>
                <tr>
                    <td>Loại sản phẩm:</td>
                    <td>
                        <select name="maloai">
                            <c:forEach var="c" items="${categories}">
                                <option value="${c.maloai}" ${c.maloai == product.maloai ? 'selected' : ''}>
                                    ${c.tenloai}
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>

                <tr><td colspan="2"><strong>Thông tin lô sản phẩm</strong></td></tr>

                <tr>
                    <td>Ngày nhập:</td>
                    <td><input type="date" name="ngaynhap" value="${product.ngaynhap}" required /></td>
                </tr>
                <tr>
                    <td>Hạn sử dụng:</td>
                    <td><input type="date" name="hansudung" value="${product.hansudung}" required /></td>
                </tr>
                <tr>
                    <td>Số lượng:</td>
                    <td><input type="number" name="soluong" value="${product.soluong}" required /></td>
                </tr>
                <tr>
                    <td>Nhà cung cấp:</td>
                    <td>
                        <select name="mancc">
                            <c:forEach var="s" items="${suppliers}">
                                <option value="${s.mancc}" ${s.mancc == product.mancc ? 'selected' : ''}>
                                    ${s.tenncc}
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Cập nhật sản phẩm" />
                        <a href="dpc" style="margin-left: 15px; text-decoration: none; padding: 10px 15px; background-color: #6c757d; color: white; border-radius: 4px;">
                            Quay lại
                        </a>
                    </td>
                </tr>

            </table>
        </form>

        <c:if test="${not empty error}">
            <p>${error}</p>
        </c:if>

    </body>
</html>
