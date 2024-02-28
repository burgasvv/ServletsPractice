package com.burgas.servletspractice.task2_3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "NumberServlet", value = "/number-servlet")
public class NumberServlet extends HttpServlet {

    private final static List<String> SYMBOLS = new ArrayList<>(
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

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String[] numbersArray = req.getParameterValues("number");
        List<String>numbers = new ArrayList<>(List.of(numbersArray));

        numbers.removeIf(String::isEmpty);

        numbers = numbers.stream().map(s -> s.replace(" ", "")).toList();
        numbers = numbers.stream().map(s -> s.replace(",",".")).toList();

        List<String>stringList = new ArrayList<>();

        for (String number: numbers){
            for (String symbol: SYMBOLS){

                if (number.contains(symbol)){
                    number = number.replace(symbol,"");
                }
            }
            stringList.add(number);
        }

        stringList.removeIf(String::isEmpty);

        String choice = req.getParameter("choice");
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

        HttpSession session = req.getSession();
        session.setAttribute("stringList", stringList);
        session.setAttribute("result", result);

        req.getRequestDispatcher("/task2-3/number.jsp").forward(req,resp);
    }
}
