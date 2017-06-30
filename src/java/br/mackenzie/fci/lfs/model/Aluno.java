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
    private String email;
    private String telefone;

    public Aluno() {
    }

    public Aluno(Integer codAluno, String nome, String email, String telefone) {
        this.codAluno = codAluno;
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
    }

    public Aluno(Integer codAluno, String nome, String telefone) {
        this.codAluno = codAluno;
        this.nome = nome;
        this.telefone = telefone;
    }

    public Aluno(Integer codAluno) {
        this.codAluno = codAluno;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

}
