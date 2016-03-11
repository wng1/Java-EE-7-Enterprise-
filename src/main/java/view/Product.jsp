//Create a layer css layout to apply style to this page

<f:metadata>
  <f:viewParam name="productName" value="#{productBean.productName}" required="true"/>
  <f:viewAction action="#{productBean.findProducts}"/>
</f:metadata>

