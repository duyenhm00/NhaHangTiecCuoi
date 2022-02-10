
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1 class="text-center text-danger">NHÀ HÀNG TIỆC CƯỚI</h1>


<ul class="pagination  justify-content-center">
    <c:forEach begin="1" end="${Math.ceil((sanhTiecCounter+monAnCounter)/20)}" var="i">
            <li class="page-item">
                <a class="page-link" href="<c:url value="/"/>?page=${i}">${i}</a>
            </li>
    </c:forEach>  
</ul>

<div class="row">
    <c:forEach var="m" items="${sanhtiec}">
        <div class="col-md-3 col-xs-12" style="padding: 10px">
            <div class="card">     
                <c:choose>
                    <c:when test="${m.anhSanhTiec != null && m.anhSanhTiec.startsWith('https') == true}">
                        <img class="img-card-top img-fluid" src="${m.anhSanhTiec}" alt="Card image"></img>
                    </c:when>
                    <c:when test="${m.anhSanhTiec == null || m.anhSanhTiec.startsWith('https') == false}">
                        <img class="img-card-top img-fluid" src="<c:url value="images/logo.jpg"/>" alt="Card image"></img>
                    </c:when>
                </c:choose>

                <div class="card-body">
                  <h4 class="card-title">${m.tenSanhTiec}</h4>
                  <a href="#" class="btn btn-primary">Đặt tiệc</a>
                </div>
            </div>
        </div>
    </c:forEach>
     <c:forEach var="m" items="${monan}">
        <div class="col-md-3 col-xs-12" style="padding: 10px">
            <div class="card">     
                <c:choose>
                    <c:when test="${m.anhMonAn != null && m.anhMonAn.startsWith('https') == true}">
                        <img class="img-card-top img-fluid" src="${m.anhMonAn}" alt="Card image"></img>
                    </c:when>
                    <c:when test="${m.anhMonAn == null || m.anhMonAn.startsWith('https') == false}">
                        <img class="img-card-top img-fluid" src="<c:url value="images/logo.jpg"/>" alt="Card image"></img>
                    </c:when>
                </c:choose>

                <div class="card-body">
                  <h4 class="card-title">${m.tenMonAn}</h4>
                  <p class="card-text">${m.giaMonAn} VNĐ</p>
                  <a href="#" class="btn btn-primary">Đặt tiệc</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>


<%--<!-- Phân trang, Center-aligned -->
<ul class="pagination  justify-content-center">
    <c:forEach begin="1" end="${Math.ceil(monAnCounter/20)}" var="i">
            <li class="page-item">
                <a class="page-link" href="<c:url value="/"/>?page=${i}">${i}</a>
            </li>
    </c:forEach>  
</ul>

<div class="row">
    <c:forEach var="m" items="${monan}">
        <div class="col-md-3 col-xs-12" style="padding: 10px">
            <div class="card">     
                <c:choose>
                    <c:when test="${m.anhMonAn != null && m.anhMonAn.startsWith('https') == true}">
                        <img class="img-card-top img-fluid" src="${m.anhMonAn}" alt="Card image"></img>
                    </c:when>
                    <c:when test="${m.anhMonAn == null || m.anhMonAn.startsWith('https') == false}">
                        <img class="img-card-top img-fluid" src="<c:url value="images/logo.jpg"/>" alt="Card image"></img>
                    </c:when>
                </c:choose>

                <div class="card-body">
                  <h4 class="card-title">${m.tenMonAn}</h4>
                  <p class="card-text">${m.giaMonAn} VNĐ</p>
                  <a href="#" class="btn btn-primary">Đặt tiệc</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
--%>





<%--<h1 class="text-center text-danger">Danh muc</h1>

<form action="">
    <div class="row">
        <div class="col-md-11">
            <input class="form-control" type="text" name="kw" placeholder="Nhập từ khóa tìm kiếm"/>
        </div>
        <div class="col-md-1">
            <input type="submit" value="Tìm kiếm" class="btn bg-info"/>
        </div>
    </div>
</form>

<div>
    <ul class="pagination">
        <c:forEach begin="1" end="${Math.ceil(counter/20)}" var="i">
            <li class="page-item"><a class="page-link" href="<c:url value="/"/>?page=${i}">${i}</a></li>
        </c:forEach>    
    </ul>
</div>
    
<div class="row">
    <c:forEach var="m" items="${monan}">
        <div class="card col-md-3">
            <div class="card-body" >
                <c:if test="${m.anhMonAn!= null && m.anhMonAn.startsWith('https') == true}">
                    <img class="img-fluid" src="<c:url value="${m.anhMonAn}"/>" alt="${m.tenMonAn}"></img>
                </c:if>
                <c:if test="${m.anhMonAn == null || m.anhMonAn.startsWith('https') == false}">
                    <img class="img-fluid" src="<c:url value="images/v-pop.jpg"/>" alt="${m.tenMonAn}"></img>
                </c:if>
                <h4>${m.tenMonAn}</h4>
                <p>${m.giaMonAn} VNĐ</p>
            </div>
            <div class="card-footer bg-white">
                <a href="#" class="btn btn-info">Đặt tiệc</a>
            </div>
        </div>
    </c:forEach>
</div>--%>