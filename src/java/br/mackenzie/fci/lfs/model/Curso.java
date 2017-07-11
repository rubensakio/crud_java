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
    private String nomeCurso;
    private Integer semestreAtual;
    private Aluno aluno;

    public Curso() {

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

    public Curso(Integer idCurso) {
        this.idCurso = idCurso;
    }

    public Curso(Integer idCurso, String nomeCurso, Integer semestreAtual, Aluno aluno) {
        this.idCurso = idCurso;
        this.nomeCurso = nomeCurso;
        this.semestreAtual = semestreAtual;
        this.aluno = aluno;
    }

    public Curso(Integer idCurso, String nomeCurso) {
        this.idCurso = idCurso;
        this.nomeCurso = nomeCurso;
    }

    public Integer getIdCurso() {
        return idCurso;
    }

    public void setIdCurso(Integer idCurso) {
        this.idCurso = idCurso;
    }

    public String getNomeCurso() {
        return nomeCurso;
    }

    public void setNomeCurso(String nomeCurso) {
        this.nomeCurso = nomeCurso;
    }

}
