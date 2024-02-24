<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Text-form Servlet</title>
    </head>
    <body>
        <div style="margin-left: 50px; margin-top: 50px">
            <form action="${pageContext.request.contextPath}/text-servlet" method="get">

                <div>
                    <label> <h3>Input text</h3> <br>
                        <textarea style="border-radius: 10px" name="text" id="text" cols="100" rows="25"></textarea>
                    </label>
                </div>
                <br><br>

                <div style="display: inline">
                    <button style="margin-right: 5px; border-radius: 10px;" type="submit" name="result"> <h3>Result</h3> </button>
                </div>
            </form>
            <button style="border-radius: 10px" onclick="history.back()"><h3>Back</h3></button>
        </div>
    </body>
</html>
