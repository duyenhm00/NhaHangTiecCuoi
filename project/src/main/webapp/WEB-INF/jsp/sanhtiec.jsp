
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1 class="text-center text-danger">QUẢN LÝ SẢNH TIỆC</h1>

<c:url value="/admin/sanhtiec" var="action"/>

<c:if test="${errMsg} != null">
    <div class="alert alert-danger">${errMsg}</div>
</c:if>

<form:form method="post" action="" modelAttribute="sanhtiec" enctype="multipart/form-data">
    
    <form:errors path="*" cssClass="alert alert-danger" element="div"/>
    
    <div class="form-group">
        <label for="tenSanhTiec">Tên sảnh tiệc</label>
        <form:input type="text" id="tenSanhTiec" path="tenSanhTiec" cssClass="form-control"/>
        <form:errors path="tenSanhTiec" cssClass="text-danger" element="div"/>
    </div>
    
    <div class="form-group">
        <label for="loaiSanhTiec">Loại sảnh tiệc</label>
        <form:select id="loaiSanhTiec" path="maLoaiSanh" cssClass="form-control">
            <c:forEach var="l" items="${loaisanh}">
                <option value="${l.idLoaiSanh}">${l.tenLoaiSanh}</option>
            </c:forEach>
        </form:select>
        <form:errors path="maLoaiSanh" cssClass="text-danger" element="div"/>
    </div>
    
    <div class="form-group">
        <label for="file">Ảnh sảnh tiệc</label>
        <form:input type="file" id="file" path="file" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <input type="submit" value="Thêm món ăn" class="btn btn-danger">
    </div>
</form:form>