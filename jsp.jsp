<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>

<%
    // Retrieve the name parameter from the URL or form submission
    String name = request.getParameter("name");
%>

<h1>Welcome to Our Website</h1>

<% if (name != null && !name.isEmpty()) { %>
    <p>Hello, <b><%= name %></b>! We're glad to have you here.</p>
<% } else { %>
    <p>Please enter your name below:</p>
    <form action="welcome.jsp" method="get">
        <input type="text" name="name" placeholder="Enter your name" required>
        <input type="submit" value="Submit">
    </form>
<% } %>

</body>
</html>
