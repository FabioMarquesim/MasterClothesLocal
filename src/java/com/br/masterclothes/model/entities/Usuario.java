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
public class Usuario implements Serializable {
    
    //User Login
    private long id_usuario;
    private String nome_usuario;
    private String senha;
    private int tipo;  
    private long fk_pfisica;

    public Usuario() {
    }

    public Usuario(long id_usuario, String nome_usuario, String senha, int tipo, long fk_pfisica) {
        this.id_usuario = id_usuario;
        this.nome_usuario = nome_usuario;
        this.senha = senha;
        this.tipo = tipo;
        this.fk_pfisica = fk_pfisica;
    }

    public Usuario(String nome_usuario, String senha, int tipo) {
        this.nome_usuario = nome_usuario;
        this.senha = senha;
        this.tipo = tipo;
    }
    

    public long getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(long id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNome_usuario() {
        return nome_usuario;
    }

    public void setNome_usuario(String nome_usuario) {
        this.nome_usuario = nome_usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public long getFk_pfisica() {
        return fk_pfisica;
    }

    public void setFk_pfisica(long fk_pfisica) {
        this.fk_pfisica = fk_pfisica;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id_usuario=" + id_usuario + ", nome_usuario=" + nome_usuario + ", senha=" + senha + ", tipo=" + tipo + ", fk_pfisica=" + fk_pfisica + '}';
    }
    
    

    
    
}
