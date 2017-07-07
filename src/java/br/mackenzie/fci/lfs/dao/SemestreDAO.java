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
    public void inserir(Semestre e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void atualizar(Semestre e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void remover(Semestre e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Semestre> consultar() {
        List<Semestre> semestres = new ArrayList<Semestre>();
        try {

            Connection c = Conexao.getInstance().getConnection();
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM lfs.semestre as s"
                    + "INNER JOIN lfs.aluno as a"
                    + "s.idAluno = a.idAluno"
                    + "INNER JOIN lfs.curso as c"
                    + "ON s.idCurso = c.idCurso");

            while (rs.next()) {

                semestres.add(new Semestre(rs.getInt("idSemestre"),
                        rs.getInt("semestreAtual"),
                        new Aluno(rs.getInt("idAluno"), rs.getString("nome")),
                        new Curso(rs.getInt("idCurso"), rs.getString("nomeCurso"))));
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SemestreDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SemestreDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return semestres;
    }

}
