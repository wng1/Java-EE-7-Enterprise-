//Once created, create a template and use these to produce a front view

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

<ui:param name="header" value="#{productBean.productName}"> //This will print the product name of the above action

<ui:define name="subheading">
<h:outputText value="#{productBean.products = null | productBean.product.size() == 0"/>
</ui:define>


//resource/template/navbar.xhtml
<div class="create a stylesheet">
<h1><ui:insert name="header"/><h1>
<h2><ui:insert name="subheading"/><h2>
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
