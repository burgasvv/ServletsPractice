package com.burgas.servletspractice.task4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TextServlet", value = "/text-servlet")
public class TextServlet extends HttpServlet {

    private final static List<String> VOWELS = new ArrayList<>(
            List.of(
                    "A","a","E","e","I","i","O","o","U","u","Y","y",
                    "А","а","У","у","О","о","И","и","Э","э","Ы","ы","Я","я","Ю","ю","Е","е","Ё","ё"
            )
    );;
    private final static List<String> CONSONANTS = new ArrayList<>(
            List.of(
                    "B","b","C","c","D","d","F","f","G","g","H","h","J","j","K","k","L","l","M","m","N","n",
                    "P","p","Q","q","R","r","S","s","T","t","V","v","W","w","X","x","Z","z",
                    "Б","б","В","в","Г","г","Д","д","Ж","ж","З","з","Й","й","К","к","Л","л","М","м","Н","н",
                    "П","п","Р","р","С","с","Т","т","Ф","ф","Х","х","Ц","ц","Ч","ч","Ш","ш","Щ","щ"
            )
    );;
    private final static List<String> PUNCTUATION = new ArrayList<>(
            List.of(
                    "!","?",".",",","(",")","{","}","[","]","'","\"",":",";","-","_","*","+","`",
                    "%","^","#","@","№","&","<",">","|","\\","/","$","☺","☻","♥","♦","♣","♠","•"
                    ,"◘","○","◙","♂","♀","♪","♫","☼","►","◄","↕","¶","§","▬","↨","↑","‼","↓","→",
                    "←","∟","↔","▲","▼"
            )
    );;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String parameter = req.getParameter("text");
        String[] split = parameter.split("");
        List<String>text = new ArrayList<>(List.of(split));

        List<String> textVowels = new ArrayList<>();
        List<String> textConsonants = new ArrayList<>();
        List<String> textPunctuation = new ArrayList<>();

        int vowelsCount = 0;
        int consonantsCount = 0;
        int punctuationCount = 0;

        for (String letter: text){
            for (String vowel: VOWELS){
                if (letter.equals(vowel)){
                    textVowels.add(letter);
                    ++vowelsCount;
                }
            }
            for (String consonant: CONSONANTS){
                if (letter.equals(consonant)){
                    textConsonants.add(letter);
                    ++consonantsCount;
                }
            }
            for (String _char: PUNCTUATION){
                if (letter.equals(_char)){
                    textPunctuation.add(letter);
                    ++punctuationCount;
                }
            }
        }

//        text.forEach(s -> {
//            VOWELS.forEach(s1 -> {
//                if (s.equals(s1)) {
//                    textVowels.add(s);
//                    ++vowelsCount;
//                }
//            });
//            CONSONANTS.forEach(s1 -> {
//                if (s.equals(s1)) {
//                    textConsonants.add(s);
//                    ++consonantsCount;
//                }
//            });
//            PUNCTUATION.forEach(s1 -> {
//                if (s.equals(s1)){
//                    textPunctuation.add(s);
//                    ++punctuationCount;
//                }
//            });
//        });

        HttpSession session = req.getSession();
        session.setAttribute("textVowels", textVowels);
        session.setAttribute("textConsonants", textConsonants);
        session.setAttribute("textPunctuation", textPunctuation);
        session.setAttribute("vowelsCount", vowelsCount);
        session.setAttribute("consonantsCount", consonantsCount);
        session.setAttribute("punctuationCount", punctuationCount);

        req.getRequestDispatcher("/task4/text.jsp").forward(req,resp);
    }
}
