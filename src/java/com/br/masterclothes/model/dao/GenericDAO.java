/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.model.dao;

import java.util.List;

/**
 *
 * @author fabio
 * @param <E> ENTIDADE
 */
public interface GenericDAO<E> {
    
    //CRUD
    public long create(E e);
    public List<E> read();
    public E readById(long id);
    public boolean update(E e);
    public boolean delete(E e);  
    
}
