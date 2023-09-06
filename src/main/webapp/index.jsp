<!DOCTYPE html>
<html>
<head>
    <title>Dynamic HTML Example</title>
</head>
<body>
    <h1>Hello, World!</h1>
    
    <%
        // Java code to get the current date and time
        java.util.Date currentDate = new java.util.Date();
        String formattedDate = new java.text.SimpleDateFormat("dd-MM-yyyy HH:mm:ss").format(currentDate);
    %>
    
    <p>Current Date and Time: <%= formattedDate %></p>
    
    <%
        // Example of a simple conditional statement in JSP
        int randomNum = (int)(Math.random() * 10) + 1;
    %>
    
    <p>
        <% if (randomNum % 2 == 0) { %>
            Random Number (<%= randomNum %>) is even.
        <% } else { %>
            Random Number (<%= randomNum %>) is odd.
        <% } %>
    </p>
</body>
</html>
