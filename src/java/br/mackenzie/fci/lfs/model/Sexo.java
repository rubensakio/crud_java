/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.model;

import java.io.Serializable;

/**
 *
 * @author LFS
 */
public class Sexo implements Serializable {

    private Integer idSexo;
    private String sexo;

    public Sexo(Integer idSexo, String sexo) {
        this.idSexo = idSexo;
        this.sexo = sexo;
    }

    public Sexo(Integer idSexo) {
        this.idSexo = idSexo;
    }

    public Sexo() {
    }

    public Integer getIdSexo() {
        return idSexo;
    }

    public void setIdSexo(Integer idSexo) {
        this.idSexo = idSexo;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    
}
