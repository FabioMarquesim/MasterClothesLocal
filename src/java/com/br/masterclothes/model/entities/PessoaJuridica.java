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
public class PessoaJuridica implements Serializable {

    private Usuario usuario;
    //Info
    private long id_juridica;
    private long cnpj;
    private String NomeCia;
    private String logradouro;
    private String complemento;
    private int numero;
    private String bairro;
    private String cidade;
    private String estado;
    private String pais;

    public PessoaJuridica() {
    }

    public PessoaJuridica(Usuario usuario, long cnpj, String NomeCia, String logradouro, String complemento, int numero, String bairro, String cidade, String estado, String pais) {
        this.usuario = usuario;
        this.cnpj = cnpj;
        this.NomeCia = NomeCia;
        this.logradouro = logradouro;
        this.complemento = complemento;
        this.numero = numero;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
        this.pais = pais;
    }

    public PessoaJuridica(Usuario usuario, long id_juridica, long cnpj, String NomeCia, String logradouro, String complemento, int numero, String bairro, String cidade, String estado, String pais) {
        this.usuario = usuario;
        this.id_juridica = id_juridica;
        this.cnpj = cnpj;
        this.NomeCia = NomeCia;
        this.logradouro = logradouro;
        this.complemento = complemento;
        this.numero = numero;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
        this.pais = pais;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public long getId_juridica() {
        return id_juridica;
    }

    public void setId_juridica(long id_juridica) {
        this.id_juridica = id_juridica;
    }

    public long getCnpj() {
        return cnpj;
    }

    public void setCnpj(long cnpj) {
        this.cnpj = cnpj;
    }

    public String getNomeCia() {
        return NomeCia;
    }

    public void setNomeCia(String NomeCia) {
        this.NomeCia = NomeCia;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    @Override
    public String toString() {
        return "PessoaJuridica{" + "usuario=" + usuario + ", id_juridica=" + id_juridica + ", cnpj=" + cnpj + ", NomeCia=" + NomeCia + ", logradouro=" + logradouro + ", complemento=" + complemento + ", numero=" + numero + ", bairro=" + bairro + ", cidade=" + cidade + ", estado=" + estado + ", pais=" + pais + '}';
    }

}
