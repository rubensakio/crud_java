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
public class Aluno implements Serializable {

    private Integer codAluno;
    private String nome;
    private String cpf;
    private String email;
    private String celular;
    private String telefone;
    private Integer numMatricula;

    public Aluno(Integer codAluno, String nome, String cpf, String email, String celular, String telefone, Integer numMatricula) {
        this.codAluno = codAluno;
        this.nome = nome;
        this.cpf = cpf;
        this.email = email;
        this.celular = celular;
        this.telefone = telefone;
        this.numMatricula = numMatricula;
    }

    public Aluno(Integer codAluno, String nome) {
        this.codAluno = codAluno;
        this.nome = nome;

    }

    public Aluno(Integer codAluno) {
        this.codAluno = codAluno;
    }
    
    

    public Aluno() {
    }

    public Integer getCodAluno() {
        return codAluno;
    }

    public void setCodAluno(Integer codAluno) {
        this.codAluno = codAluno;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public Integer getNumMatricula() {
        return numMatricula;
    }

    public void setNumMatricula(Integer numMatricula) {
        this.numMatricula = numMatricula;
    }

   

}
