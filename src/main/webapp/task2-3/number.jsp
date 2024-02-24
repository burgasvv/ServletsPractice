<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Number Servlet</title>
    </head>
    <body>

        <div style="margin-left: 50px; margin-top: 50px">
            <%

                List<String> symbols = new ArrayList<>(
                        List.of(
                                "A","a","E","e","I","i","O","o","U","u","Y","y",
                                "А","а","У","у","О","о","И","и","Э","э","Ы","ы","Я","я","Ю","ю","Е","е","Ё","ё",
                                "B","b","C","c","D","d","F","f","G","g","H","h","J","j","K","k","L","l","M","m","N","n",
                                "P","p","Q","q","R","r","S","s","T","t","V","v","W","w","X","x","Z","z",
                                "Б","б","В","в","Г","г","Д","д","Ж","ж","З","з","Й","й","К","к","Л","л","М","м","Н","н",
                                "П","п","Р","р","С","с","Т","т","Ф","ф","Х","х","Ц","ц","Ч","ч","Ш","ш","Щ","щ",
                                "!","?",",","(",")","{","}","[","]","'","\"",":",";","-","_","*","+","`",
                                "%","^","#","@","№","&","<",">","|","\\","/","$","☺","☻","♥","♦","♣","♠","•"
                                ,"◘","○","◙","♂","♀","♪","♫","☼","►","◄","↕","¶","§","▬","↨","↑","‼","↓","→",
                                "←","∟","↔","▲","▼"
                        )
                );

                String[] numbersArray = request.getParameterValues("number");
                List<String>numbers = new ArrayList<>(List.of(numbersArray));

                numbers.removeIf(String::isEmpty);

                numbers = numbers.stream().map(s -> s.replace(" ", "")).toList();
                numbers = numbers.stream().map(s -> s.replace(",",".")).toList();

                List<String>stringList = new ArrayList<>();

                for (String number: numbers){
                    for (String symbol: symbols){

                        if (number.contains(symbol)){
                            number = number.replace(symbol,"");
                        }
                    }
                    stringList.add(number);
                }

                stringList.removeIf(String::isEmpty);

                String choice = request.getParameter("choice");
                double result = 0;

                if ("max".equals(choice)){
                    result = stringList.stream().map(Double::parseDouble).max(Double::compareTo).orElseThrow();

                } else if ("min".equals(choice)) {
                    result = stringList.stream().map(Double::parseDouble).min(Double::compareTo).orElseThrow();

                } else if ("avg".equals(choice)) {
                    result = stringList.stream()
                            .map(Double::parseDouble)
                            .mapToDouble(Double::doubleValue).average().orElseThrow();
                }
            %>

            <h3> <%= stringList %></h3>
            <h1> <%= result %></h1>
            
            <button style="border-radius: 10px" onclick="history.back()"><h3>Back</h3></button>
        </div>

    </body>
</html>