<body>
<h:from>
<h:message errorStyle="color:red; display:block" for="validation" />

<h:outputLabel value="First Name:" style="font-weight:bold" />  
<h:inputText id="validation" required="true" label="Validation Test" value="#{Customer.user.firstname}"/>


//utilise inputSecret when creating password

<h:commandButton value="Submit" />
</h:form>
</body>
