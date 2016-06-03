/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.model.entities;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author 31595006
 */
public class PessoaFisica implements Serializable {
    
    private Usuario usuario;
    //User Info
    private long id_pfisica;
    private String nome;
    private String sobrenome;
    private String sexo;
    private String telefone;
    private String email;
    private int cep;
    private String logradouro;
    private String complemento;
    private int numero;
    private String bairro;
    private String cidade;
    private String estado;
    private String pais;
    private Date dataNasc;

    //Contrutor Vazio
    public PessoaFisica() {
    }

    public PessoaFisica(Usuario usuario, long id_pfisica, String nome, String sobrenome, String sexo, String telefone, String email, int cep, String logradouro, String complemento, int numero, String bairro, String cidade, String estado, String pais) {
        this.usuario = usuario;
        this.id_pfisica = id_pfisica;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.sexo = sexo;
        this.telefone = telefone;
        this.email = email;
        this.cep = cep;
        this.logradouro = logradouro;
        this.complemento = complemento;
        this.numero = numero;
        this.bairro = bairro;
        this.cidade = cidade;
        this.estado = estado;
        this.pais = pais;
    }

    public PessoaFisica(Usuario usuario, String nome, String sobrenome, String sexo, String telefone, String email, int cep, String logradouro, String complemento, int numero, String bairro, String cidade, String estado, String pais) {
        this.usuario = usuario;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.sexo = sexo;
        this.telefone = telefone;
        this.email = email;
        this.cep = cep;
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

    public long getId_pfisica() {
        return id_pfisica;
    }

    public void setId_pfisica(long id_pfisica) {
        this.id_pfisica = id_pfisica;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
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
    
    public Date getDataNasc() {
        return dataNasc;
    }
    
    public String getDataNascimento() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dataNascimento = sdf.format(dataNasc);
        return dataNascimento ;
    }

    public void setDataNasc(Date dataNasc) {
        this.dataNasc = dataNasc;
    }

    @Override
    public String toString() {
        return "PessoaFisica{" + "usuario=" + usuario + ", id_pfisica=" + id_pfisica + ", nome=" + nome + ", sobrenome=" + sobrenome + ", sexo=" + sexo + ", telefone=" + telefone + ", email=" + email + ", cep=" + cep + ", logradouro=" + logradouro + ", complemento=" + complemento + ", numero=" + numero + ", bairro=" + bairro + ", cidade=" + cidade + ", estado=" + estado + ", pais=" + pais + ", dataNasc=" + dataNasc + '}';
    }

}
