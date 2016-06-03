/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.model.entities;

import java.io.Serializable;

/**
 *
 * @author fabio e gabriel
 */
public class Produto implements Serializable {
    
    private long id_produto;
    private double preco;
    private String nome;
    private String descricao;
    private String tamanho;
    private String cor;
    private long categoria;
    private long publico;
    private boolean status;
    
    public Produto() {
    }

    public Produto(long id_produto, double preco, String nome, String descricao, String tamanho, String cor, long categoria, long publico) {
        this.id_produto = id_produto;
        this.preco = preco;
        this.nome = nome;
        this.descricao = descricao;
        this.tamanho = tamanho;
        this.cor = cor;
        this.categoria = categoria;
        this.publico = publico;
        this.status = false;
    }

    public Produto(double preco, String nome, String descricao, String tamanho, String cor, long categoria, long publico) {
        this.preco = preco;
        this.nome = nome;
        this.descricao = descricao;
        this.tamanho = tamanho;
        this.cor = cor;
        this.categoria = categoria;
        this.publico = publico;
        this.status = false;
    }

    public long getId_produto() {
        return id_produto;
    }

    public void setId_produto(long id_produto) {
        this.id_produto = id_produto;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public long getCategoria() {
        return categoria;
    }

    public void setCategoria(long categoria) {
        this.categoria = categoria;
    }

    public long getPublico() {
        return publico;
    }

    public void setPublico(long publico) {
        this.publico = publico;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Produto{" + "id_produto=" + id_produto + ", preco=" + preco + ", nome=" + nome + ", descricao=" + descricao + ", tamanho=" + tamanho + ", cor=" + cor + ", categoria=" + categoria + ", publico=" + publico + ", status=" + status + '}';
    }
    
    
}
