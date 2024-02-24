<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Number-Form Servlet</title>
    </head>
    <body>
        <div style="margin-left: 50px; margin-top: 50px">

            <form action="${pageContext.request.contextPath}/number-servlet" method="get">

                <label id="number1"><h3>Input number</h3>
                    <input style="border-radius: 5px" type="text" name="number"><br>
                </label><br>

                <label id="number2"><h3>Input number</h3>
                    <input style="border-radius: 5px" type="text" name="number"><br>
                </label><br>

                <label id="number3"><h3>Input number</h3>
                    <input style="border-radius: 5px" type="text" name="number"><br>
                </label><br><br>

                <label>
                    <input type="radio" name="choice" value="max"> MAX
                </label><br>
                <label>
                    <input type="radio" name="choice" value="min"> MIN
                </label><br>
                <label>
                    <input type="radio" name="choice" value="avg"> AVG
                </label><br><br><br>

                <button style="display: inline; margin-right: 5px; border-radius: 10px" type="submit" name="result"> <h3>Result</h3> </button>
            </form>

            <button style="border-radius: 10px" onclick="history.back()"><h3>Back</h3></button>
        </div>

    </body>
</html>