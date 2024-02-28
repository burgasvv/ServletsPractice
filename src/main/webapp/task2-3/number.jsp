<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Number Servlet</title>
    </head>
    <body>

        <div style="margin-left: 50px; margin-top: 50px">
            <%
                Object stringList = session.getAttribute("stringList");
                Object result = session.getAttribute("result");
            %>

            <h3> <%= stringList %></h3>
            <h1> <%= result %></h1>
            
            <button style="border-radius: 10px" onclick="history.back()"><h3>Back</h3></button>
        </div>

    </body>
</html>