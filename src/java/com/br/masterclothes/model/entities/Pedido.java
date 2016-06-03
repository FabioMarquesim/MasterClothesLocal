/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.model.entities;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author fabio
 */
public class Pedido implements Serializable {
    
    private long id_pedido;
    private Usuario usuario;
    private double precoTotal;
    private List<ItensPedido> itensPedido;

    public Pedido() {
    }

    public Pedido(long id_pedido, Usuario usuario, double precoTotal, List<ItensPedido> itensPedido) {
        this.id_pedido = id_pedido;
        this.usuario = usuario;
        this.precoTotal = precoTotal;
        this.itensPedido = itensPedido;
    }

    public long getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(long id_pedido) {
        this.id_pedido = id_pedido;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public double getPrecoTotal() {
        return precoTotal;
    }

    public void setPrecoTotal(double precoTotal) {
        this.precoTotal = precoTotal;
    }

    public List<ItensPedido> getItensPedido() {
        return itensPedido;
    }

    public void setItensPedido(List<ItensPedido> itensPedido) {
        this.itensPedido = itensPedido;
    }

    @Override
    public String toString() {
        return "Pedido{" + "id_pedido=" + id_pedido + ", usuario=" + usuario + ", precoTotal=" + precoTotal + ", itensPedido=" + itensPedido + '}';
    }

    
}
