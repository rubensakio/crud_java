/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.exception.PersistenciaException;
import br.mackenzie.fci.lfs.model.Aluno;
import br.mackenzie.fci.lfs.model.Matricula;
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
public class MatriculaDAO implements GenericoDAO<Matricula> {

    @Override
    public void inserir(Matricula matricula) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void atualizar(Matricula matricula) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void remover(Matricula matricula)  {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Matricula> consultar()  {

        List<Matricula> matriculas = new ArrayList<Matricula>();
        try {

            Connection c = Conexao.getInstance().getConnection();
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT m.idMatricula, m.numMatricula, a.nome, a.telefone"
                    + "FROM lfs.matricula AS m "
                    + "INNER JOIN lfs.aluno AS a "
                    + "ON m.idAluno = a.idAluno");
            while (rs.next()) {

                matriculas.add(new Matricula(rs.getInt("idMatricula"),
                        rs.getInt("numMatricula"),
                        new Aluno(rs.getInt("idAluno"),
                                rs.getString("nome"),
                                rs.getString("telefone"))));
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MatriculaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return matriculas;
    }

}
