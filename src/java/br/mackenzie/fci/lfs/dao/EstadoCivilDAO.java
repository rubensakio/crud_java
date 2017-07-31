/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.exception.PersistenciaException;
import br.mackenzie.fci.lfs.model.EstadoCivil;
import br.mackenzie.fci.lfs.model.Sexo;
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
public class EstadoCivilDAO {

    public List<EstadoCivil> consultar() {

        List<EstadoCivil> estados_civis = new ArrayList<EstadoCivil>();
        try {
            Connection connection = Conexao.getInstance().getConnection();
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("select * from  lfs.estado_civil"
                    + "as s");

            while (result.next()) {

                estados_civis.add(new EstadoCivil(result.getInt("idEstadoCivil"),
                        result.getString("status")));

            }
        } catch (ClassNotFoundException | SQLException ex) {

            Logger.getLogger(SexoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return estados_civis;
    }

}
