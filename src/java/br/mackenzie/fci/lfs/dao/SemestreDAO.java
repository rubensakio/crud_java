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

            Connection connection = Conexao.getInstance().getConnection();
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("SELECT *"
                    + "FROM lfs.semestre AS R"
                    + "INNER JOIN lfs.aluno AS C"
                    + "ON R.idAluno = C.idAluno"
                    + "INNER JOIN AS lfs.curso Q"
                    + "ON R.idCurso = Q.idCurso");

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
