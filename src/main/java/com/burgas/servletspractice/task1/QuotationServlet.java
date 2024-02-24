package com.burgas.servletspractice.task1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "QuotationServlet", value = "/quotation-servlet")
public class QuotationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        String author = "(c) Linus Torvalds.";
        String quotation = "\"Bad programmers worry about the code.\n" +
                "Good programmers worry about data structures and their relationships\"";

        session.setAttribute("author",author);
        session.setAttribute("quotation", quotation);

        req.getRequestDispatcher("/task1/quotation.jsp").forward(req,resp);
    }
}
