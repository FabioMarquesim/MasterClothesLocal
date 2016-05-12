/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.lp2.exceptions;

/**
 *
 * @author fabio
 */
public class DBException extends RuntimeException{
    
    public static final String ERROR_INSERT = "PROBLEMA NA INSERÇÃO!";
    
    public DBException(String str){
        super();
        System.out.println(str);
    }
    
}
