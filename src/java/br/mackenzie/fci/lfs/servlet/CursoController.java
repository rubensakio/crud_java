/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.servlet;

import br.mackenzie.fci.lfs.dao.CursoDAO;
import br.mackenzie.fci.lfs.model.Curso;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LFS
 */
@WebServlet(name = "CursoController", urlPatterns = {"/curso"})
public class CursoController extends HttpServlet {

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

        if (request != null && request.getParameter("command") != null) {

            if ("curso.consultarCurso".equalsIgnoreCase(request.getParameter("command"))) {
                request.setAttribute("cursos", new CursoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/curso/consultarCurso.jsp").forward(request, response);
            }
            if ("curso.formulario".equalsIgnoreCase(request.getParameter("command"))) {
                
                request.getRequestDispatcher("WEB-INF/jsp/curso/incluirCurso.jsp").forward(request, response);
            }
            if ("curso.inserir".equalsIgnoreCase(request.getParameter("command"))) {
                Curso curso = new Curso();
                curso.setNomeCurso(request.getParameter("nomeCurso"));
                new CursoDAO().inserir(curso);
                request.setAttribute("cursos", new CursoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/curso/consultarCurso.jsp").forward(request, response);
            }
            if ("curso.atualizar".equalsIgnoreCase(request.getParameter("command"))) {
                
                
                request.getRequestDispatcher("WEB-INF/jsp/curso/validarCurso.jsp").forward(request, response);
            }
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