/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.DAO;
import Entity.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 *
 * @author Le Vu
 */
@WebServlet(name = "forgotControl", urlPatterns = {"/forgot"})
public class forgotControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String user = request.getParameter("email");
        String securityQuestion = request.getParameter("securityQuestion");
        String answer = request.getParameter("securityAnswer");
        DAO dao= new DAO();
        User a = dao.checkAccountExist(user);
        if(a==null){
            request.setAttribute("mess1", "Email not exist");
            request.getRequestDispatcher("forgotQS.jsp").forward(request, response); //DUng khi cần đẩy dữ liệu sang trang khác
        
         }
        else if(!securityQuestion.equals(a.getQuestionSecurity()) || !answer.equals(a.getAnswer())){
             request.setAttribute("mess2", "Question Sercurity and Answer isn't correct!!!");
            request.getRequestDispatcher("forgotQS.jsp").forward(request, response); //DUng khi cần đẩy dữ liệu sang trang khác
        }
        //signup
        else{
            String email = a.getEmail();
           request.setAttribute("userEmail", email);
           request.getRequestDispatcher("changePass.jsp").forward(request, response); //DUng khi cần đẩy dữ liệu sang trang khác
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
