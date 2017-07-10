/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.exception.PersistenciaException;
import br.mackenzie.fci.lfs.model.Aluno;
import br.mackenzie.fci.lfs.model.Curso;
import br.mackenzie.fci.lfs.model.Semestre;
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
public class SemestreDAO implements GenericoDAO<Semestre> {

    @Override
    public void inserir(Semestre semestre) {

        try {
            String sql = "INSERT INTO lfs.semestre (semestreAtual,idAluno,idCurso) values (?,?,?)";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, semestre.getSemestreAtual());
            ps.setInt(2, semestre.getAluno().getCodAluno());
            ps.setInt(3, semestre.getCurso().getIdCurso());
            ps.execute();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(SemestreDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void atualizar(Semestre semestre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void remover(Semestre semestre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Semestre listarPorId(Semestre semestre) {

        try {
            String sql = "SELECT * FROM lfs.semestre WHERE idSemestre=?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, semestre.getIdSemestre());
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                semestre.setIdSemestre(rs.getInt("idSemestre"));
                semestre.setAluno(new Aluno(rs.getInt("idAluno")));
                semestre.setCurso(new Curso(rs.getInt("idCurso")));

            }

            c.close();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(SemestreDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return semestre;
    }

    @Override
    public List<Semestre> consultar() {
        List<Semestre> semestres = new ArrayList<Semestre>();

        try {

            Connection connection = Conexao.getInstance().getConnection();
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("SELECT * FROM lfs.semestre AS R INNER JOIN lfs.aluno AS C "
                    + "ON C.idAluno = R.idAluno "
                    + "INNER JOIN lfs.curso AS Q "
                    + "ON Q.idCurso = R.idCurso");

            while (result.next()) {

                semestres.add(new Semestre(result.getInt("idSemestre"),
                        result.getInt("semestreAtual"),
                        new Aluno(result.getInt("idAluno"),
                                result.getString("nome"),
                                result.getString("email"),
                                result.getString("telefone"),
                                result.getInt("numMatricula")),
                        new Curso(result.getInt("idCurso"),
                                result.getString("nomeCurso"))));

            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(SemestreDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return semestres;
    }

}
