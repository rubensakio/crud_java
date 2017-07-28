/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.exception.PersistenciaException;
import br.mackenzie.fci.lfs.model.Aluno;
import br.mackenzie.fci.lfs.model.Curso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LFS
 */
public class CursoDAO implements GenericoDAO<Curso> {

    @Override
    public void inserir(Curso curso) {
        try {
            String sql = "INSERT INTO lfs.curso(nomeInstituicao,nomeCurso,semestreAtual,idAluno) VALUES(?,?,?,?)";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, curso.getNomeInstituicao());
            ps.setString(2, curso.getNomeCurso());
            ps.setInt(3, curso.getSemestreAtual());
            ps.setInt(4, curso.getAluno().getCodAluno());
            ps.execute();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CursoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void atualizar(Curso curso) {
        try {
            String sql = "UPDATE lfs.curso SET nomeInstituicao=?, nomeCurso=?, semestreAtual=?, idAluno=? WHERE idCurso=?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, curso.getNomeInstituicao());
            ps.setString(2, curso.getNomeCurso());
            ps.setInt(3, curso.getSemestreAtual());
            ps.setInt(4, curso.getAluno().getCodAluno());
            ps.setInt(5, curso.getIdCurso());
            ps.execute();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CursoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void remover(Curso curso) {
        try {
            String sql = "DELETE FROM lfs.curso WHERE idCurso=?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, curso.getIdCurso());
            ps.execute();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CursoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Curso listarPorID(Curso curso) {

        try {
            String sql = "SELECT * FROM lfs.curso AS c WHERE c.idCurso = ?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, curso.getIdCurso());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                curso.setIdCurso(rs.getInt("idCurso"));
                curso.setNomeInstituicao(rs.getString("nomeInstituicao"));
                curso.setNomeCurso(rs.getString("nomeCurso"));
                curso.setSemestreAtual(rs.getInt("semestreAtual"));
                curso.setAluno(new Aluno(rs.getInt("idAluno")));
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CursoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return curso;
    }

    @Override
    public List<Curso> consultar() {
        List<Curso> cursos = new ArrayList<Curso>();
        try {
            Connection c = Conexao.getInstance().getConnection();
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM lfs.curso AS c INNER JOIN lfs.aluno AS a ON c.idAluno = a.idAluno ORDER BY c.idCurso ASC");

            while (rs.next()) {
                cursos.add(new Curso(rs.getInt("idCurso"),
                        rs.getString("nomeInstituicao"),
                        rs.getString("nomeCurso"),
                        rs.getInt("semestreAtual"),
                        new Aluno(rs.getInt("idAluno"),
                                rs.getString("nome"),
                                rs.getInt("numMatricula"))));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CursoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cursos;
    }

}
