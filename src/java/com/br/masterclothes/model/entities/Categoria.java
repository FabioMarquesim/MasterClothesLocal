/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.model.entities;

import java.io.Serializable;

/**
 *
 * @author fabio
 */
public class Categoria implements Serializable{
    
    private long id_categoria;
    private String nome_cat;

    public Categoria() {
    }

    public Categoria(long id_categoria, String nome_cat) {
        this.id_categoria = id_categoria;
        this.nome_cat = nome_cat;
    }

    public long getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(long id_categoria) {
        this.id_categoria = id_categoria;
    }

    public String getNome_cat() {
        return nome_cat;
    }

    public void setNome_cat(String nome_cat) {
        this.nome_cat = nome_cat;
    }

    @Override
    public String toString() {
        return "Categoria{" + "id_categoria=" + id_categoria + ", nome_cat=" + nome_cat + '}';
    }
    
    
    
}
