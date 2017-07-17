/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.model.Aluno;
import br.mackenzie.fci.lfs.model.Sexo;
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
public class AlunoDAO implements GenericoDAO<Aluno> {

    @Override
    public void inserir(Aluno aluno) {

        try {
            String sql = "INSERT INTO lfs.aluno (nome,cpf,rg,email,celular,telefone,numMatricula,idSexo) values(?,?,?,?,?,?,?,?)";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, aluno.getNome());
            ps.setString(2, aluno.getCpf());
            ps.setString(3, aluno.getRg());
            ps.setString(4, aluno.getEmail());
            ps.setString(5, aluno.getCelular());
            ps.setString(6, aluno.getTelefone());
            ps.setInt(7, aluno.getNumMatricula());
            ps.setInt(8, aluno.getSexo().getIdSexo());
            ps.execute();
            c.close();
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void atualizar(Aluno aluno) {
        try {
            String sql = "UPDATE lfs.aluno SET nome=?, cpf=?, rg=?, email=?, celular=?, telefone=?, numMatricula=?, idSexo=? WHERE idAluno=?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, aluno.getNome());
            ps.setString(2, aluno.getCpf());
            ps.setString(3, aluno.getRg());
            ps.setString(4, aluno.getEmail());
            ps.setString(5, aluno.getCelular());
            ps.setString(6, aluno.getTelefone());
            ps.setInt(7, aluno.getNumMatricula());
            ps.setInt(8, aluno.getSexo().getIdSexo());
            ps.setInt(9, aluno.getCodAluno());
            ps.execute();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Aluno listarPorId(Aluno aluno) {

        try {
            String sql = "SELECT * FROM lfs.aluno as A  WHERE A.idAluno = ?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, aluno.getCodAluno());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                aluno.setCodAluno(rs.getInt("idAluno"));
                aluno.setNome(rs.getString("nome"));
                aluno.setCpf(rs.getString("cpf"));
                aluno.setRg(rs.getString("rg"));
                aluno.setEmail(rs.getString("email"));
                aluno.setCelular(rs.getString("celular"));
                aluno.setTelefone(rs.getString("telefone"));
                aluno.setNumMatricula(rs.getInt("numMatricula"));
                aluno.setSexo(new Sexo(rs.getInt("idSexo")));
            }

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return aluno;
    }

    @Override
    public void remover(Aluno aluno) {
        try {
            String sql = "DELETE FROM lfs.aluno where idAluno=?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, aluno.getCodAluno());
            ps.execute();
            c.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<Aluno> consultar() {

        List<Aluno> alunos = new ArrayList<Aluno>();
        try {
            Connection connection = Conexao.getInstance().getConnection();
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("select * from lfs.aluno as a INNER JOIN lfs.sexo as s ON a.idSexo = s.idSexo");

            while (result.next()) {

                alunos.add(new Aluno(result.getInt("idAluno"),
                        result.getString("nome"),
                        new Sexo(result.getInt("idSexo"),
                                result.getString("sexo")),
                        result.getString("cpf"),
                        result.getString("rg"),
                        result.getString("email"),
                        result.getString("celular"),
                        result.getString("telefone"),
                        result.getInt("numMatricula")));

            }
        } catch (ClassNotFoundException | SQLException ex) {

            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return alunos;
    }

}
