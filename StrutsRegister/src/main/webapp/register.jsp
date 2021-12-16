<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>Register</title>
<s:head/>
</head>
<body>

	<h2>Register Form</h2>
	
	<s:form action="registerAction">
		<s:textfield name="firstName" label="First Name"/>
		<s:textfield name="lastName" label="Last Name"/>
		<s:radio name="gender" list="{'Male', 'Female'}" label="Gender" />
		<s:textfield name="age" label="Age" />
		<s:textfield name="email" label="Email" />
		<s:textarea name="address" cols="30" rows="7" label="Address" />
		<s:select list="{'Red', 'Green', 'Blue', 'Purple', 'White', 'Black'}" 
			name="selectedColor" 
			headerKey="None" 
			headerValue="Select a color"
			label="Favorite Color"/>
		<s:checkbox name="subscription" value="false" label="Subscripbe us"></s:checkbox>
		<s:checkboxlist list="{'Code', 'Read', 'Music', 'Game'}"  name="selectedHobbies" label="Hobbies"/>
		<s:reset value="Reset" />
		<s:submit value="Register" />
	</s:form>
	<br/>
	<table border="1" width="300">
		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Product Price</th>
		</tr>
		<s:iterator value="products" var="product">
			<tr>
				<td>
					<s:property value="#product.productId" />
				</td>
				<td>
					<s:property value="#product.productName" />
				</td>
				<td>
					<s:property value="#product.productPrice" />
				</td>
			</tr>
		</s:iterator>
	</table>

</body>
</html>





