<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quotation Servlet</title>
</head>
    <body>

        <%
            String authorAttribute = (String)session.getAttribute("author");
            String quotationAttribute = (String)session.getAttribute("quotation");
        %>
        <div style="margin-left: 50px; margin-top: 50px">
            <h2 style="font-style: oblique">
                <%=quotationAttribute%>
<%--                "Bad programmers worry about the code. <br>--%>
<%--                Good programmers worry about data structures and their relationships".--%>
            </h2>
            <h1 style="font-style: oblique">
                <%=authorAttribute%>
<%--                (c) Linus Torvalds.--%>
            </h1><br>
            <button style="border-radius: 10px" onclick="history.back()"><h3>Back</h3></button>
        </div>
    </body>
</html>
