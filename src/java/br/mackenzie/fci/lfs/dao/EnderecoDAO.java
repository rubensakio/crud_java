/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.exception.PersistenciaException;
import br.mackenzie.fci.lfs.model.Aluno;
import br.mackenzie.fci.lfs.model.Endereco;
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
public class EnderecoDAO implements GenericoDAO<Endereco> {

    @Override
    public void inserir(Endereco endereco) {
        try {
            String sql = "INSERT INTO lfs.endereco (nomeEndereco,numero,complemento,bairro,cidade,uf,cep,idAluno) values(?,?,?,?,?,?,?,?)";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setString(1, endereco.getNomeEndereco());
            ps.setInt(2, endereco.getNumero());
            ps.setString(3, endereco.getComplemento());
            ps.setString(4, endereco.getBairro());
            ps.setString(5, endereco.getCidade());
            ps.setString(6, endereco.getUf());
            ps.setString(7, endereco.getCep());
            ps.setInt(8, endereco.getAluno().getCodAluno());
            ps.execute();
            c.close();
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void atualizar(Endereco endereco) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Endereco listarPorId(Endereco endereco) {

        try {
            String sql = "SELECT * FROM lfs.endereco as E  WHERE E.idEndereco = ?";
            Connection c = Conexao.getInstance().getConnection();
            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, endereco.getIdEndereco());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                endereco.setIdEndereco(rs.getInt("idEndereco"));
                endereco.setNomeEndereco(rs.getString("nomeEndereco"));
                endereco.setNumero(rs.getInt("numero"));
                endereco.setComplemento(rs.getString("complemento"));
                endereco.setBairro(rs.getString("bairro"));
                endereco.setCidade(rs.getString("cidade"));
                endereco.setUf(rs.getString("uf"));
                endereco.setCep(rs.getString("cep"));
                endereco.setAluno(new Aluno(rs.getInt("idAluno")));
            }

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(AlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return endereco;
    }

    @Override
    public void remover(Endereco endereco) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    //public Endereco listarPorId (Endereco endereco){}
    @Override
    public List<Endereco> consultar() {

        List<Endereco> enderecos = new ArrayList<Endereco>();

        try {
            Connection c = Conexao.getInstance().getConnection();
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM lfs.endereco as e INNER JOIN lfs.aluno as a ON e.idAluno = a.idAluno order by e.idEndereco");
            while (rs.next()) {

                enderecos.add(new Endereco(rs.getInt("idEndereco"),
                        rs.getString("nomeEndereco"),
                        rs.getInt("numero"),
                        rs.getString("complemento"),
                        rs.getString("bairro"),
                        rs.getString("cidade"),
                        rs.getString("uf"),
                        rs.getString("cep"),
                        new Aluno(rs.getInt("idAluno"),
                                rs.getString("nome"))));

            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(EnderecoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return enderecos;
    }

}
