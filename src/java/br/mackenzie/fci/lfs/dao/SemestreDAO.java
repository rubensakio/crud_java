/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.exception.PersistenciaException;
<<<<<<< HEAD
=======
import br.mackenzie.fci.lfs.model.Aluno;
import br.mackenzie.fci.lfs.model.Curso;
>>>>>>> 5aaef82eacb21954571889b9b364ea70e5b41639
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
<<<<<<< HEAD
    public void inserir(Semestre semestre) throws PersistenciaException {
=======
    public void inserir(Semestre e) {
>>>>>>> 5aaef82eacb21954571889b9b364ea70e5b41639
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
<<<<<<< HEAD
    public void atualizar(Semestre semestre) throws PersistenciaException {
=======
    public void atualizar(Semestre e) {
>>>>>>> 5aaef82eacb21954571889b9b364ea70e5b41639
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
<<<<<<< HEAD
    public void remover(Semestre semestre) throws PersistenciaException {
=======
    public void remover(Semestre e) {
>>>>>>> 5aaef82eacb21954571889b9b364ea70e5b41639
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
<<<<<<< HEAD
    public List<Semestre> consultar() throws PersistenciaException {
        List<Semestre> semestres = new ArrayList<Semestre>();

        try {
            Connection c = Conexao.getInstance().getConnection();
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery("");
            while (rs.next()) {
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(SemestreDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
=======
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

>>>>>>> 5aaef82eacb21954571889b9b364ea70e5b41639
        return semestres;
    }

}
