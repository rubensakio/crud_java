/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.servlet;

import br.mackenzie.fci.lfs.dao.AlunoDAO;
import br.mackenzie.fci.lfs.dao.EnderecoDAO;
import br.mackenzie.fci.lfs.model.Aluno;
import br.mackenzie.fci.lfs.model.Endereco;
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
@WebServlet(name = "EnderecoController", urlPatterns = {"/endereco"})
public class EnderecoController extends HttpServlet {

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

            if ("endereco.consultarEndereco".equalsIgnoreCase(request.getParameter("command"))) {
                request.setAttribute("enderecos", new EnderecoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/endereco/consultarEndereco.jsp").forward(request, response);
            }
            if ("endereco.formulario".equalsIgnoreCase(request.getParameter("command"))) {
                request.setAttribute("alunos", new AlunoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/endereco/incluirEndereco.jsp").forward(request, response);
            }
            if ("endereco.inserir".equalsIgnoreCase(request.getParameter("command"))) {
                Endereco endereco = new Endereco();
                endereco.setNomeEndereco(request.getParameter("nomeEndereco"));
                endereco.setNumero(Integer.parseInt(request.getParameter("numero")));
                endereco.setComplemento(request.getParameter("complemento"));
                endereco.setBairro(request.getParameter("bairro"));
                endereco.setCidade(request.getParameter("cidade"));
                endereco.setUf(request.getParameter("uf"));
                endereco.setCep(request.getParameter("cep"));
                endereco.setAluno(new Aluno(Integer.parseInt(request.getParameter("alunos"))));

                new EnderecoDAO().inserir(endereco);

                request.setAttribute("enderecos", new EnderecoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/endereco/consultarEndereco.jsp").forward(request, response);
            }

            if ("endereco.atualizar".equalsIgnoreCase(request.getParameter("command"))) {

                request.setAttribute("enderecos", new EnderecoDAO().consultar());
                request.getRequestDispatcher("WEB-INF/jsp/endereco/alterarEndereco.jsp").forward(request, response);

            }
            if ("endereco.validarEndereco".equalsIgnoreCase(request.getParameter("command"))) {
                Endereco endereco = new Endereco();
                endereco.setIdEndereco(Integer.parseInt(request.getParameter("enderecos")));
                endereco = new EnderecoDAO().listarPorId(endereco);
                request.setAttribute("alunos", new AlunoDAO().consultar());
                request.setAttribute("endereco", endereco);
                request.getRequestDispatcher("WEB-INF/jsp/endereco/validarEndereco.jsp").forward(request, response);

            }
            if ("endereco.validar-atualizacao".equalsIgnoreCase(request.getParameter("command"))) {
                Endereco endereco = new Endereco();

                request.getRequestDispatcher("WEB-INF/jsp/endereco/validarEndereco.jsp").forward(request, response);

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
