<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <title>Green Mart Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                margin: 0;
                padding: 0;
                overflow: hidden; /* Ngăn cuộn toàn trang */
            }

            .sidebar {
                position: fixed;
                top: 0;
                left: 0;
                width: 200px;
                height: 100vh;
                background-color: #ABC098;
                border-right: 2px solid #ccc;
                padding: 10px;
                overflow: hidden;
                z-index: 999;
            }

            .sidebar h4 {
                font-weight: bold;
                margin-bottom: 20px;
                text-shadow: 1px 1px 2px #211922; /* đổ bóng nhẹ */
            }

            .sidebar button {
                width: 100%;
                margin-bottom: 10px;
                border: 1px solid black;
                background-color: white;
                text-align: left;
                padding: 10px;
            }

            .sidebar button.active {
                background-color: #dcdcdc;
            }

            .main-content {
                position: fixed;
                top: 0;
                left: 200px; /* bằng với chiều rộng sidebar */
                width: calc(100% - 200px);
                height: 100vh;
                display: flex;
                flex-direction: column;
                z-index: 998;
            }

            .topbar {
                background-color: #DFE3C6; 
                padding: 10px;
                border-bottom: 1px solid #aaa;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3); /* Đổ bóng phía dưới */
                z-index: 1000; /* đảm bảo nổi hơn nội dung */
            }

            .scrollable-content {
                overflow-y: auto;
                flex: 1;
                padding: 15px;
                background-color: white;
            }

            .metrics-box div {
                border: 1px solid black;
                padding: 10px;
                height: 80px;
            }

            .section-box {
                border: 1px solid #666;
                border-radius: 10px;
                padding: 15px;
                margin-bottom: 13px;
            }

            .section-title {
                color: blue;
                margin-bottom: 10px;
                font-weight: bold;
            }

            table th, table td {
                border: 1px solid black;
                text-align: center;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }
            
            .container-flex {
        display: flex;
        gap: 30px;
        padding: 20px;
        background-color: white;
    }

    .class1 {
        flex: 2;
    }

    .class2 {
        flex: 1;
        background-color: #cfcfcf;
        border: 2px solid #334477;
        border-radius: 6px;
        padding: 20px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .form-inline-group {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 20px;
    }

    .form-inline-group label {
        flex: 1;
        font-weight: bold;
    }

    .form-inline-group input {
        flex: 2;
        padding: 6px;
    }

    .submit-btn-wrapper {
        display: flex;
        justify-content: flex-end;
    }

    .submit-btn-wrapper input[type="submit"] {
        padding: 5px 12px;
        font-weight: bold;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    table th, table td {
        border: 1px solid #333;
        padding: 6px;
        text-align: center;
    }

    table thead {
        background-color: #d3d3d3;
        font-weight: bold;
    }

    .search-bar {
        display: flex;
        gap: 10px;
        margin-bottom: 15px;
    }

    .search-bar input {
        padding: 5px;
    }

    .pagination {
        margin-top: 15px;
    }

    .pagination a, .pagination strong {
        margin-right: 5px;
        text-decoration: none;
    }
    
    .pagination-box {
    display: flex;
    gap: 6px;
    margin-top: 15px;
}

.pagination-box a,
.pagination-box strong {
    display: inline-block;
    width: 30px;
    height: 30px;
    line-height: 28px;
    text-align: center;
    border: 1px solid #6fa865;       /* Viền xanh lá */
    border-radius: 4px;
    text-decoration: none;
    color: #6fa865;                  /* Chữ xanh lá */
    font-weight: bold;
    background-color: #fff;
    
}



.pagination-box strong {
    background-color: #6fa865;       /* Trang hiện tại: nền xanh lá */
    color: white;
    border-color: #6fa865;
}
        </style>
    </head>
    <body>

        <!-- Sidebar -->
        <div class="sidebar">
            
           
            <h4>Green Mart</h4>
            
             
            <!-- Tổng quan -->
            <button onclick="window.location.href = 'tongquan.html'" class="btn btn-light w-100 mb-2 text-start border">Tổng quan</button>

            <!-- Bán hàng Dropdown -->
            <div class="dropdown mb-2">
                <button class="btn btn-light dropdown-toggle w-100 text-start border" type="button" data-bs-toggle="dropdown">
                    Bán hàng
                </button>
                <ul class="dropdown-menu w-100">
                    <li><a class="dropdown-item" href='Store Management.jsp'>Quản lý sản phẩm</a></li>
                    <li><a class="dropdown-item" href="#">Quản lý bán hàng</a></li>
                </ul>
            </div>

            <!-- Tồn kho -->
            <button onclick="window.location.href = 'tonkho.html'" class="btn btn-light w-100 mb-2 text-start border">Tồn kho</button>

            <!-- Sản phẩm Dropdown -->
            <div class="dropdown mb-2">
                <button class="btn btn-light dropdown-toggle w-100 text-start border" type="button" data-bs-toggle="dropdown">
                    Sản phẩm
                </button>
                <ul class="dropdown-menu w-100">
                    <li><a class="dropdown-item" href="#">Thanh toán</a></li>
                    <li><a class="dropdown-item" href="#">Đặt đơn</a></li>
                </ul>
            </div>
            
             <!-- Sản phẩm Dropdown -->
            
            <!-- Hàng hoá Kho Dropdown -->
           
            <div class="dropdown mb-2">
                 <button class="btn btn-light dropdown-toggle w-100 text-start border" type="button" data-bs-toggle="dropdown">
                    Tổng hợp hàng hoá kho
                </button>
                <ul class="dropdown-menu w-100">
                    <li><a class="dropdown-item" href="mathangcontroller">Loại mặt hàng</a></li>
                    <li><a class="dropdown-item" href="#">Lô hàng</a></li>
                </ul>
            </div>
           
            <div class="dropdown mb-2">
                 <button class="btn btn-light dropdown-toggle w-100 text-start border" type="button" data-bs-toggle="dropdown">
                   Nhà cung cấp
                </button>
                <ul class="dropdown-menu w-100">
                    <li><a class="dropdown-item" href="suanhacungcapcontroller">Chỉnh sửa nhà cung cấp</a></li>
                    <li><a class="dropdown-item" href="nhacungcapcontroller">Thêm nhà cung cấp</a></li>
                </ul>
            </div>


            

            <!-- Các mục còn lại -->
            <button onclick="window.location.href = 'Store Management.jsp'" class="btn btn-light w-100 mb-2 text-start border">Đơn đặt hàng</button>
            
            <button onclick="window.location.href = 'khachhang.html'" class="btn btn-light w-100 mb-2 text-start border">Khách hàng</button>
           
           
            
            <button onclick="window.location.href = 'cabanhang.html'" class="btn btn-light w-100 mb-2 text-start border">Ca bán hàng</button>
            <button onclick="window.location.href = 'baocao.html'" class="btn btn-light w-100 mb-2 text-start border">Báo cáo</button>
        </div>
             
        
        <!-- Main Content -->
        <div class="main-content">
            <!-- Topbar -->
           <div class="topbar d-flex justify-content-between align-items-center">
                <div class="d-flex align-items-center gap-2">
                    <input type="text" class="form-control" placeholder="Tìm kiếm(Ctr + K)" style="width: 250px;">
                    <select class="form-select" style="width: 120px;">
                        <option>Thời gian</option>
                    </select>
                </div>
                <div>

                    <button onclick="window.location.href = 'baocao.html'" class="btn btn-outline-dark btn-sm">Login/Logout</button>
                    <button onclick="window.location.href = 'baocao.html'" class="btn btn-outline-dark btn-sm">Thông báo</button>
                    <button onclick="window.location.href = 'baocao.html'" class="btn btn-outline-dark btn-sm">User</button>
                </div>
            </div>

            <!-- Scrollable Content -->
            <head>
    <meta charset="UTF-8"> <!-- Gọn hơn & chính xác -->
    <title>Loại mặt hàng</title>
</head>
<body>
    <h1>Loại mặt hàng</h1>

    <!-- Form tìm kiếm -->
   <div class="container-flex">

    <!-- TRÁI: DANH SÁCH -->
    <div class="class1">
        <form method="post" action="smh" class="search-bar">
            
            Mã mặt hàng: <input type="text" name="maloai" />
            Tên mặt hàng: <input type="text" name="tenloai" />
            <input type="submit" name="submit" value="Search">
            <input type="submit" name="submit" value="ShowAll" />
        </form>
        <table>
            <thead>
                <tr>
                    <th>Mã loại</th>
                    <th>Tên loại mặt hàng</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listDonhang}" var="p">
                    <tr>
                        <td>${p.maloai}</td>
                        <td>${p.tenloai}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <c:if test="${empty listDonhang}">
            <p>Không tìm thấy kết quả</p>
        </c:if>

        <div class="pagination-box">
    <c:forEach begin="1" end="${totalPages}" var="i">
        <c:choose>
            <c:when test="${i == currentPage}">
                <strong>${i}</strong>
            </c:when>
            <c:otherwise>
                <a href="mathangcontroller?page=${i}">${i}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</div>
    </div>

    <!-- PHẢI: FORM THÊM -->
    <div class="class2">
        <form method="post" action="mathangcontroller" style="flex-grow: 1;">
            <div class="form-inline-group">
                <label for="tenloaimoi">Tên loại mặt hàng cần thêm</label>
                <input type="text" name="tenloaimoi" placeholder="Text box">
            </div>
            <div class="submit-btn-wrapper">
                <input type="submit" name="submit" value="Add">
            </div>
        </form>

        <c:if test="${not empty error}">
        <p style="color:red;"><strong>${error}</strong></p>
        </c:if>
        <c:if test="${not empty success}">
        <p style="color:green;"><strong>${success}</strong></p>
        </c:if>
</div>
    

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>





</html>
