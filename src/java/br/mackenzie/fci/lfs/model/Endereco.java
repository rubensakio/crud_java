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
public class Endereco implements Serializable {

    private Integer idEndereco;
    private String nomeEndereco;
    private Integer numero;
    private String bairro;
    private String cidade;
    private String uf;
    private Aluno aluno;

    public Endereco(Integer idEndereco, String nomeEndereco, Integer numero, String bairro, String cidade, String uf, Aluno aluno) {
        this.idEndereco = idEndereco;
        this.nomeEndereco = nomeEndereco;
        this.numero = numero;
        this.bairro = bairro;
        this.cidade = cidade;
        this.uf = uf;
        this.aluno = aluno;
    }

    public Endereco(Integer idEndereco) {
        this.idEndereco = idEndereco;
    }

    public Integer getIdEndereco() {
        return idEndereco;
    }

    public void setIdEndereco(Integer idEndereco) {
        this.idEndereco = idEndereco;
    }

    public String getNomeEndereco() {
        return nomeEndereco;
    }

    public void setNomeEndereco(String nomeEndereco) {
        this.nomeEndereco = nomeEndereco;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }

    
    
    public Endereco() {
    }
    
    

}
