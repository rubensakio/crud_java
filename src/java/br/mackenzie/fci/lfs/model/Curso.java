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
public class Curso implements Serializable {

    private Integer idCurso;
    private String nomeInstituicao;
    private String nomeCurso;
    private Integer semestreAtual;
    private Aluno aluno;

    public Curso(Integer idCurso, String nomeInstituicao, String nomeCurso, Integer semestreAtual, Aluno aluno) {
        this.idCurso = idCurso;
        this.nomeInstituicao = nomeInstituicao;
        this.nomeCurso = nomeCurso;
        this.semestreAtual = semestreAtual;
        this.aluno = aluno;
    }

    public Curso() {
    }

    public Curso(Integer idCurso) {
        this.idCurso = idCurso;
    }

    public Integer getIdCurso() {
        return idCurso;
    }

    public void setIdCurso(Integer idCurso) {
        this.idCurso = idCurso;
    }

    public String getNomeInstituicao() {
        return nomeInstituicao;
    }

    public void setNomeInstituicao(String nomeInstituicao) {
        this.nomeInstituicao = nomeInstituicao;
    }

    public String getNomeCurso() {
        return nomeCurso;
    }

    public void setNomeCurso(String nomeCurso) {
        this.nomeCurso = nomeCurso;
    }

    public Integer getSemestreAtual() {
        return semestreAtual;
    }

    public void setSemestreAtual(Integer semestreAtual) {
        this.semestreAtual = semestreAtual;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }



}
