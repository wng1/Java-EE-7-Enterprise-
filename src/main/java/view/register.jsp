<body>
<h:form>
<h:message errorStyle="color:red; display:block" for="validation" />

<h:outputLabel value="First Name:" style="font-weight:bold" />  
<h:inputText id="validation" required="true" label="Validation Test" value="#{Customer.user.firstname}"/>

//output label can be extended to be improved by incorporating the messages.proprties and xml

<h:outputLabel id="firstNameLabel" for="firstName" value="#{messages,firstNameLabel}" />
//message.properties = firstNameLabel=First Name

//faces-config.xml - include the dependency for this. 


//Alternative would be to use an outputText
//Support internalisation support

<h:outputText value="i18n.firstName"/>
<h:inputText id="firstName" value="#{Customer.user.firstname}"/>


//utilise inputSecret when creating password

<h:commandButton value="Submit" />
</h:form>
</body>
