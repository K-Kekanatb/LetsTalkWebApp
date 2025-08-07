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
public class StartSessionServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //create session
        HttpSession session = request.getSession(true);
        String name = request.getParameter("name");
        //initialise the session
        initializeSession(session, name);
        RequestDispatcher rd = request.getRequestDispatcher("session_started.jsp");
        rd.forward(request, response);
    }
    
    private void initializeSession(HttpSession session, String name) {
        String gender = "", teamSupported = "";
        session.setAttribute("name", name);
        session.setAttribute("gender", gender);
        session.setAttribute("teamSupported", teamSupported);
    }

    

}
