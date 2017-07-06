/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.model.Aluno;
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
            String sql = "INSERT INTO lfs.aluno (nome,email,telefone,numMatricula) values(?,?,?,?)";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, aluno.getNome());
            ps.setString(2, aluno.getEmail());
            ps.setString(3, aluno.getTelefone());
            ps.setInt(4, aluno.getNumMatricula());
            ps.execute();
            c.close();
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    @Override
    public void atualizar(Aluno aluno) {
        try {
            String sql = "UPDATE lfs.aluno SET nome=?, email=?, telefone=?, numMatricula=? where idAluno=?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, aluno.getNome());
            ps.setString(2, aluno.getEmail());
            ps.setString(3, aluno.getTelefone());
            ps.setInt(4, aluno.getNumMatricula());
            ps.setInt(5, aluno.getCodAluno());
            ps.execute();
            c.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public Aluno listarPorId(Aluno aluno) {
        
        try {
            String sql = "SELECT * FROM lfs.aluno  WHERE idAluno = ?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, aluno.getCodAluno());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
                aluno.setCodAluno(rs.getInt("idAluno"));
                aluno.setNome(rs.getString("nome"));
                aluno.setEmail(rs.getString("email"));
                aluno.setTelefone(rs.getString("telefone"));
                aluno.setNumMatricula(rs.getInt("numMatricula"));
                
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
            ResultSet result = statement.executeQuery("select * from lfs.aluno "
                    + "as a");
            
            while (result.next()) {
                
                alunos.add(new Aluno(result.getInt("idAluno"),
                        result.getString("nome"),
                        result.getString("email"),
                        result.getString("telefone"),
                        result.getInt("numMatricula")));
                
            }
        } catch (ClassNotFoundException ex) {
            
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return alunos;
    }
    
}
