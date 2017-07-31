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
    private Sexo sexo;
    private String cpf;
    private String rg;
    private String email;
    private String celular;
    private String telefone;
    private Integer numMatricula;
    private EstadoCivil estadoCivil;

    public Aluno(Integer codAluno, String nome, Sexo sexo, String cpf, String rg, String email, String celular, String telefone, Integer numMatricula, EstadoCivil estadoCivil) {
        this.codAluno = codAluno;
        this.nome = nome;
        this.sexo = sexo;
        this.cpf = cpf;
        this.rg = rg;
        this.email = email;
        this.celular = celular;
        this.telefone = telefone;
        this.numMatricula = numMatricula;
        this.estadoCivil = estadoCivil;
    }

    public Aluno(Integer codAluno, String nome) {
        this.codAluno = codAluno;
        this.nome = nome;

    }

    public Aluno(Integer codAluno) {
        this.codAluno = codAluno;
    }

    public Aluno(Integer codAluno, String nome, Integer numMatricula) {
        this.codAluno = codAluno;
        this.nome = nome;
        this.numMatricula = numMatricula;
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

    public Sexo getSexo() {
        return sexo;
    }

    public void setSexo(Sexo sexo) {
        this.sexo = sexo;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
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

    public EstadoCivil getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(EstadoCivil estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

}
