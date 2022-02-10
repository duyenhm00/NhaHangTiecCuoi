
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

  <ul class="navbar-nav">  
    <li class="nav-item active">
        <a class="nav-link" href="<c:url value="/" />">Trang chủ</a>
    </li>
    <!-- Dropdown Sảnh -->
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Sảnh</a>
        <div class="dropdown-menu">
             <c:forEach var="l" items="${loaisanh}">
                <c:url value="/" var="loaiSanhPath">
                    <c:param name="idLoaiSanh" value="${l.idLoaiSanh}"></c:param>
                </c:url>
                <a class="dropdown-item" href="${loaiSanhPath}">${l.tenLoaiSanh}</a>
            </c:forEach>
        </div>
        
    </li>
    <!-- Dropdown Thực Đơn -->
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Thực đơn</a>
        <div class="dropdown-menu">
            <c:forEach var="l" items="${loaimon}">
                <c:url value="/" var="loaiMonPath">
                    <c:param name="idLoaiMon" value="${l.idLoaiMon}"></c:param>
                </c:url>
                <a class="dropdown-item" href="${loaiMonPath}">${l.tenLoaiMon}</a>
            </c:forEach>
        </div>
    </li>
    <!-- Dropdown Dịch Vụ -->
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Dịch vụ</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Link 1</a>
          <a class="dropdown-item" href="#">Link 2</a>
          <a class="dropdown-item" href="#">Link 3</a>
        </div>
    </li>
    <!-- Dropdown Phản hồi -->
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Phản hồi</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Link 1</a>
          <a class="dropdown-item" href="#">Link 2</a>
          <a class="dropdown-item" href="#">Link 3</a>
        </div>
    </li>
    <!-- Dropdown Liên Hệ -->
    <li class="nav-item">
        <a class="nav-link" href="#">Liên hệ</a>
    </li>
     <!-- Đặt tiệc -->   
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/dattiec"/>">Đặt tiệc</a>
    </li>
    <!-- Tìm kiếm -->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <form class="form-inline" action="<c:url value="/"/>">
          <input class="form-control mr-sm-2" name="kw"  type="text" placeholder="Nhập từ khóa">
          <button class="btn btn-success" type="submit">Tìm Kiếm</button>
        </form>
    </nav>
   
  </ul>
</nav>

<%--<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">Trang chu</a>
    </li>
    <c:forEach var="l" items="${loaimon}">
        <li class="nav-item">
            <a class="nav-link" href="#">${l.tenLoaiMon}</a>
        </li>
    </c:forEach>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/dattiec"/>">Đặt tiệc</a>
    </li>
    
  </ul>
</nav>--%>

