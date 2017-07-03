/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.servlet;

import br.mackenzie.fci.lfs.dao.AlunoDAO;
import br.mackenzie.fci.lfs.model.Aluno;
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
@WebServlet(name = "AlunoController", urlPatterns = {"/aluno"})
public class AlunoController extends HttpServlet {

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
            if ("aluno.consultarClientes".equalsIgnoreCase(request.getParameter("command"))) {

                request.setAttribute("alunos", new AlunoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/aluno/consultarClientes.jsp").forward(request, response);

            }
            if ("aluno.formulario".equalsIgnoreCase(request.getParameter("command"))) {

                request.getRequestDispatcher("WEB-INF/jsp/aluno/incluirAluno.jsp").forward(request, response);

            }
            if ("aluno.atualizar".equalsIgnoreCase(request.getParameter("command"))) {

                request.setAttribute("alunos", new AlunoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/aluno/alterarAluno.jsp").forward(request, response);
            }
            if ("aluno.excluir".equalsIgnoreCase(request.getParameter("command"))) {

                request.setAttribute("alunos", new AlunoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/aluno/excluirAluno.jsp").forward(request, response);
            }
            if ("aluno.validarExclusaoAluno".equalsIgnoreCase(request.getParameter("command"))) {

                Aluno aluno = new Aluno();
                aluno.setCodAluno(Integer.parseInt(request.getParameter("alunos")));
                aluno = new AlunoDAO().listarPorId(aluno);
                request.setAttribute("aluno", aluno);
                request.getRequestDispatcher("WEB-INF/jsp/aluno/validarExclusaoAluno.jsp").forward(request, response);
            }
            if ("aluno.validarAluno".equalsIgnoreCase(request.getParameter("command"))) {

                Aluno aluno = new Aluno();
                aluno.setCodAluno(Integer.parseInt(request.getParameter("alunos")));
                aluno = new AlunoDAO().listarPorId(aluno);
                request.setAttribute("aluno", aluno);
                request.getRequestDispatcher("WEB-INF/jsp/aluno/validarAluno.jsp").forward(request, response);
            }

            if ("aluno.validar-atualizacao".equalsIgnoreCase(request.getParameter("command"))) {

                Aluno aluno = new Aluno();
                aluno.setCodAluno(Integer.parseInt(request.getParameter("codAluno")));
                aluno.setNome(request.getParameter("nome"));
                aluno.setEmail(request.getParameter("email"));
                aluno.setTelefone(request.getParameter("telefone"));
                new AlunoDAO().atualizar(aluno);
                request.setAttribute("alunos", new AlunoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/aluno/consultarClientes.jsp").forward(request, response);
            }

            if ("aluno.inserir".equals(request.getParameter("command"))) {
                Aluno aluno = new Aluno();
                aluno.setNome(request.getParameter("nome"));
                aluno.setEmail(request.getParameter("email"));
                aluno.setTelefone(request.getParameter("telefone"));

                new AlunoDAO().inserir(aluno);

                request.setAttribute("alunos", new AlunoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/aluno/consultarClientes.jsp").forward(request, response);
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
