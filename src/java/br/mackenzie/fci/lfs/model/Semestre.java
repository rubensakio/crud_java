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
public class Semestre implements Serializable {
    
    private Integer idSemestre;
    private Integer semestreAtual;
    private Aluno aluno;
    private Curso curso;

    public Semestre() {
    }

    public Semestre(Integer idSemestre, Integer semestreAtual, Aluno aluno, Curso curso) {
        this.idSemestre = idSemestre;
        this.semestreAtual = semestreAtual;
        this.aluno = aluno;
        this.curso = curso;
    }

    public Integer getIdSemestre() {
        return idSemestre;
    }

    public void setIdSemestre(Integer idSemestre) {
        this.idSemestre = idSemestre;
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

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }
    
    
    
    
    
    
    
    
}
