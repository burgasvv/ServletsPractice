<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Text Servlet</title>
    </head>
    <body>
        <%
            Object textVowels = session.getAttribute("textVowels");
            Object textConsonants = session.getAttribute("textConsonants");
            Object textPunctuation = session.getAttribute("textPunctuation");
            Object vowelsCount = session.getAttribute("vowelsCount");
            Object consonantsCount = session.getAttribute("consonantsCount");
            Object punctuationCount = session.getAttribute("punctuationCount");
        %>

        <div style="margin-left: 50px; margin-top: 50px; margin-right: 50px">
            <h1> Vowels count: <%=vowelsCount%></h1>
            <h3> Vowels list: <%=textVowels%></h3>
        </div>

        <div style="margin-left: 50px; margin-top: 50px; margin-right: 50px">
            <h1> Consonants count: <%=consonantsCount%></h1>
            <h3> Consonants list: <%=textConsonants%></h3>
        </div>

        <div style="margin-left: 50px; margin-top: 50px; margin-right: 50px">
            <h1> Punctuation count: <%=punctuationCount%></h1>
            <h3> Punctuation list: <%=textPunctuation%></h3>
        </div>

        <div style="margin-left: 50px; margin-top: 50px; margin-right: 50px">
            <button style="border-radius: 10px" onclick="history.back()"><H3>Back</H3></button>
        </div>
    </body>
</html>
