<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type", content="text/html"; charset="UTF-8">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/ 3.0.0/css/bootstrap.min.css">
    <title>Products</title>
</head>
<body>
    <section>
        <div class="jumbotrom">
            <div class="container">
                <h1>Products</h1>
                <p>Add Products</p>
                <a href="<c:url var="logout" value="/logout" />" class="btn btn-danger btn-mini pull-right">
                    Logout
                </a>
            </div>
        </div>
    </section>
    <section class="container">
        <form:form modelAttribute="newProduct" class="form-horizontal">
            <fieldset>
                <legend>Add New Product</legend>
                <div class="form-group">
                    <label class="control-label col-lg-2 col-lg-2" for="productId">
                        <spring:message code="addProduct.form.productId.label" />
                    </label>
                    <div class="col-lg-10">
                        <form:input id="productId" path="productId" type="text" class="form:input-large"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-2 col-lg-2" for="name">Product Name</label>
                    <div class="col-lg-10">
                        <form:input id="name" path="name" type="text" class="form:input-large"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-2 col-lg-2" for="unitPrice">Unit Price</label>
                    <div class="col-lg-10">
                        <form:input id="unitPrice" path="unitPrice" type="text" class="form:input-large"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-2 col-lg-2" for="manufacturer">Manufacturer</label>
                    <div class="col-lg-10">
                        <form:input id="manufacturer" path="manufacturer" type="text" class="form:input-large"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-2 col-lg-2" for="category">Category</label>
                    <div class="col-lg-10">
                        <form:input id="category" path="category" type="text" class="form:input-large"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-2 col-lg-2" for="unitsInStock">Units InStock</label>
                    <div class="col-lg-10">
                        <form:input id="unitsInStock" path="unitsInStock" type="text" class="form:input-large"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-2" for="description">Description</label>
                    <div class="col-lg-10">
                        <form:textarea id="description" path="description" rows="2" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-2" for="condition">In Stock</label>
                    <div class="col-lg-10">
                        <form:radiobutton id="condition" path="condition" value="New" /> New
                        <form:radiobutton id="condition" path="condition" value="Old"/> Old
                        <form:radiobutton id="condition" path="condition" value="Refurbished"/> Refurbished
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <input type="submit" id="btnAdd" class="btn btn-primary" value="Add"/>
                    </div>
                </div>
            </fieldset>
        </form:form>
    </section>

</body>
</html>
