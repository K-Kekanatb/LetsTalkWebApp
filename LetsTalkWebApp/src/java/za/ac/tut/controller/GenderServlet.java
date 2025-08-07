/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author khuts
 */
public class GenderServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get session
        HttpSession session = request.getSession();
        String gender = request.getParameter("gender");
        
        ConversationInterface ci = new ConversationManager();
        String title =  ci.generateTitle(gender);
        session.setAttribute("title", title);
        RequestDispatcher rd = request.getRequestDispatcher("gender_outcome.jsp");
        rd.forward(request, response);
    }


}
