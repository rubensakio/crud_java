/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.model;

/**
 *
 * @author LFS
 */
public class Matricula {

    private Integer codMatricula;
    private Integer numMatricula;
    private Aluno aluno;

    public Matricula() {

    }

    public Matricula(Integer codMatricula, Integer numMatricula, Aluno aluno) {
        this.codMatricula = codMatricula;
        this.numMatricula = numMatricula;
        this.aluno = aluno;
    }

    public Integer getCodMatricula() {
        return codMatricula;
    }

    public void setCodMatricula(Integer codMatricula) {

        this.codMatricula = codMatricula;
    }

    public Integer getNumMatricula() {
        return numMatricula;
    }

    public void setNumMatricula(Integer numMatricula) {
        this.numMatricula = numMatricula;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }

}
