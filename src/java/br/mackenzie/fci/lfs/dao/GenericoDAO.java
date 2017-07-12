/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.mackenzie.fci.lfs.dao;

import br.mackenzie.fci.lfs.exception.PersistenciaException;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author LFS
 */
public interface GenericoDAO<E> extends Serializable {

    public void inserir(E e) throws PersistenciaException;

    public void atualizar(E e) throws PersistenciaException;

    public void remover(E e) throws PersistenciaException;

    public List<E> consultar() throws PersistenciaException;
}
