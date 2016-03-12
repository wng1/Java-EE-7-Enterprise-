//Once created, create a template and use these to produce a front view

//showProduct.jsp
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE composition PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<ui:composition xmlns="http://www.w3.org/1999/xhtml"
                xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
                xmlns:h="http://xmlns.jcp.org/jsf/html"
                xmlns:f="http://xmlns.jcp.org/jsf/core"
                template="/resources/navBar.xhtml">   //include the navBar and the navBar.xhtml includes the whole theme style

<f:metadata>
  <f:viewParam name="productName" value="#{productBean.productName}" required="true"/>
  <f:viewAction action="#{productBean.findProducts}"/>
</f:metadata>   //This will list the products name when clicked by the user

<ui:define name="header" value="#{productBean.productName}"> </ui:define>
//This will print the product name of the above action

<ui:define name="subheading">
<h:outputText value="#{productBean.products = null | productBean.product.size() == 0"/>
</ui:define>

<ui:define name="main">

<h:dataTable value="#{productBean.products}" var="nameOfproducts"rendered="#{productBean.products.size() > 0}" styleClass="table
<h:column>
<h:link outcome="showproducts" includeViewParam="true" value="#{nameOfproducts.name}">
<f:param name="pid" value="#{nameOfproducts.id}"/>
</h:link>
</h:column>

<h:column>
<h:outputTest value="#{nameOfproducts.description}"/>
</h:column>

</h:dataTable>
</ui:define>



//resource/template/navbar.xhtml
<div class="create a stylesheet">
<h1><ui:insert name="header"/><h1>
<h2><ui:insert name="subheading"/><h2>
<ui:insert name="main"/>
</div>

//resource/template/navbarTemplate.xhtml


<ui:define name="navigation">

<div class="style1"> //apply a style to this nav bar

<li><h3>
<h:link outcome="/order/showproducts" value="LinkPage1">
<f:param name="productName" value="LinkPage1"/>
</h:link>
</h3></li>

</div>
</ui:define>
