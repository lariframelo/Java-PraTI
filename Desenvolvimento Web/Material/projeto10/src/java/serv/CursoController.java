/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author odair.souza
 */
public class CursoController extends HttpServlet {

    //acesso via POST
    protected void gravarCurso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String msg = "";
        try 
        {
            if (request.getParameter("sub") != null) 
            {
                //conectar com banco de dados
                Class.forName("com.mysql.jdbc.Driver");
                String host = "jdbc:mysql://localhost/alfajava";
                String user = "root";
                String pass = "";
                Connection conn = DriverManager.getConnection(host, user, pass);

                //pegar paramentros e fazer verificações
                //então, criar o comando e executar
                String nom = request.getParameter("nom");
                String des = request.getParameter("des");
                String val = request.getParameter("val");
                String sql = "insert into curso (nome, descricao, valor) "
                            + " values "
                            + "(?, ?, ?)";
                
                //executar o comando SQL
                //se deu certo, direciona para a lista
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, nom);
                stmt.setString(2, des);
                stmt.setFloat(3, Float.parseFloat(val));
                int res = stmt.executeUpdate();
                if (res > 0) {
                    msg = "ok";
                } else {
                    msg = "bug";
                }
                
                //fechar os objetos de manipulação do SGBD
                stmt.close();
                conn.close();
            }
            
        } 
        catch(Exception e) {
            msg = "bug";
        }
        
        response.sendRedirect("lista.jsp?msg="+msg);
    }
    
    //acesso via GET
    protected void listarCursos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("Sem implementação ainda... aguarde");
        } finally {
            out.close();
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
        listarCursos(request, response);
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
        gravarCurso(request, response);
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
