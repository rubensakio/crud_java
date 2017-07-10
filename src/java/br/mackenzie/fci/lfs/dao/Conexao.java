/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

/**
 *
 * @author LFS
 */
public class Conexao {
//Bundle: ferramenta utilizada para adicionar arquivo cujo conteúdo é um texto que relata dados possíveis da conexão com o banco de dados - java.  
    private static ResourceBundle bundle;
    private static Conexao conexao;

    private Conexao() {
        bundle = ResourceBundle.getBundle("br.mackenzie.fci.lfs.util.configuracao");
    }

    public static Conexao getInstance() {
        if (conexao == null) {
            conexao = new Conexao();
        }
        return conexao;
    }

    public Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(bundle.getString("driver"));
        return DriverManager.getConnection(bundle.getString("url"), bundle.getString("usuario"), bundle.getString("senha"));

    }
}
