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
public class PessoaJuridica extends Pessoa implements Serializable{
    
    private long cnpj;
    private String CompanyName;

    public PessoaJuridica(long cnpj, String CompanyName, String p) {
        this.cnpj = cnpj;
        this.CompanyName = CompanyName;
    }


    
    
    
    
}
