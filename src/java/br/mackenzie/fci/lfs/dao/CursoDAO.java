/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.exception.PersistenciaException;
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
            String sql = "INSERT INTO lfs.curso(nomeCurso) values (?)";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, curso.getNomeCurso());
            ps.execute();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CursoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void atualizar(Curso curso) {

        try {
            String sql = "UPDATE lfs.curso SET nomeCurso=? where idCurso=?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, curso.getNomeCurso());
            ps.setInt(2, curso.getIdCurso());
            ps.execute();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Curso listarPorId(Curso curso) {

        try {
            String sql = "SELECT * FROM lfs.curso  WHERE idCurso = ?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, curso.getIdCurso());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                curso.setIdCurso(rs.getInt("idCurso"));
                curso.setNomeCurso(rs.getString("nomeCurso"));

            }

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return curso;
    }

    @Override
    public void remover(Curso curso) {
        String sql = "DELETE FROM lfs.curso";
    }

    @Override
    public List<Curso> consultar() {

        List<Curso> cursos = new ArrayList<Curso>();
        try {

            Connection c = Conexao.getInstance().getConnection();
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM lfs.curso");
            while (rs.next()) {

                cursos.add(new Curso(rs.getInt("idCurso"), rs.getString("nomeCurso")));

            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CursoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cursos;
    }

}
