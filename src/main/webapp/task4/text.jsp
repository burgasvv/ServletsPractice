<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.concurrent.atomic.AtomicInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Text Servlet</title>
    </head>
    <body>
        <%
            List<String> vowels = new ArrayList<>(
                    List.of(
                            "A","a","E","e","I","i","O","o","U","u","Y","y",
                            "А","а","У","у","О","о","И","и","Э","э","Ы","ы","Я","я","Ю","ю","Е","е","Ё","ё"
                    )
            );
            List<String> consonants = new ArrayList<>(
                    List.of(
                            "B","b","C","c","D","d","F","f","G","g","H","h","J","j","K","k","L","l","M","m","N","n",
                            "P","p","Q","q","R","r","S","s","T","t","V","v","W","w","X","x","Z","z",
                            "Б","б","В","в","Г","г","Д","д","Ж","ж","З","з","Й","й","К","к","Л","л","М","м","Н","н",
                            "П","п","Р","р","С","с","Т","т","Ф","ф","Х","х","Ц","ц","Ч","ч","Ш","ш","Щ","щ"
                    )
            );
            List<String> punctuation = new ArrayList<>(
                    List.of(
                            "!","?",".",",","(",")","{","}","[","]","'","\"",":",";","-","_","*","+","`",
                            "%","^","#","@","№","&","<",">","|","\\","/","$","☺","☻","♥","♦","♣","♠","•"
                            ,"◘","○","◙","♂","♀","♪","♫","☼","►","◄","↕","¶","§","▬","↨","↑","‼","↓","→",
                            "←","∟","↔","▲","▼"
                    )
            );

            String parameter = request.getParameter("text");
            String[] split = parameter.split("");
            List<String>text = new ArrayList<>(List.of(split));

            List<String> textVowels = new ArrayList<>();
            List<String> textConsonants = new ArrayList<>();
            List<String> textPunctuation = new ArrayList<>();

            AtomicInteger vowelsCount = new AtomicInteger();
            AtomicInteger consonantsCount = new AtomicInteger();
            AtomicInteger punctuationCount = new AtomicInteger();

            text.forEach(s -> {
                vowels.forEach(s1 -> {
                    if (s.equals(s1)) {
                        textVowels.add(s);
                        vowelsCount.getAndIncrement();
                    }
                });
                consonants.forEach(s1 -> {
                    if (s.equals(s1)) {
                        textConsonants.add(s);
                        consonantsCount.getAndIncrement();
                    }
                });
                punctuation.forEach(s1 -> {
                    if (s.equals(s1)){
                        textPunctuation.add(s);
                        punctuationCount.getAndIncrement();
                    }
                });
            });
        %>

        <div style="margin-left: 50px; margin-top: 50px; margin-right: 50px">
            <h1> Vowels count: <%=vowelsCount.get()%></h1>
            <h3> Vowels list: <%=textVowels%></h3>
        </div>

        <div style="margin-left: 50px; margin-top: 50px; margin-right: 50px">
            <h1> Consonants count: <%=consonantsCount.get()%></h1>
            <h3> Consonants list: <%=textConsonants%></h3>
        </div>

        <div style="margin-left: 50px; margin-top: 50px; margin-right: 50px">
            <h1> Punctuation count: <%=punctuationCount.get()%></h1>
            <h3> Punctuation list: <%=textPunctuation%></h3>
        </div>

        <div style="margin-left: 50px; margin-top: 50px; margin-right: 50px">
            <button style="border-radius: 10px" onclick="history.back()"><H3>Back</H3></button>
        </div>
    </body>
</html>
