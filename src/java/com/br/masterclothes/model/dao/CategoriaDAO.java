/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.model.dao;

import com.br.masterclothes.model.connection.SingleConnection;
import com.br.masterclothes.model.entities.Categoria;
import com.br.masterclothes.model.entities.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author fabio
 */
public class CategoriaDAO implements GenericDAO<Categoria> {

    private Connection connection;
    
    public CategoriaDAO() {
        
        connection = SingleConnection.getInstance().getConnection();
        
    }
    
    @Override
    public long create(Categoria e) {
        long chave = -1;
        
        try {
            
            String sql = "INSERT INTO categoria (nome_cat) VALUES (?)";
            
            PreparedStatement pst = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            
            pst.setString(1, e.getNome_cat());
            
            int resultado = pst.executeUpdate();
            
            if (resultado == 0) {
                System.out.println("PROBLEMA no cadastro da Categoria");
                
            }else{
                chave = 1;
            }
            pst.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return chave;
    }

    @Override
    public List<Categoria> read() {
        
    List<Categoria> categorias = new ArrayList<>();
        
        try {
            
            String sql = "SELECT * FROM categoria";
            PreparedStatement pst = connection.prepareStatement(sql);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs != null && rs.next()) {
                
                Categoria c = new Categoria();
                
                c.setId_categoria(rs.getLong("id_categoria"));
                c.setNome_cat(rs.getString("nome_cat"));
                
                categorias.add(c);
                
            }
            
            pst.close();
            
        } catch (SQLException ex) {
            
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        return categorias;
        
    }

    @Override
    public Categoria readById(long id) {
        Categoria c = null;
        
        try {
            
            String sql = "SELECT * FROM categoria WHERE id_categoria=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, id);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs != null && rs.next()) {
                
                c = new Categoria();
                
                c.setId_categoria(rs.getLong("id_categoria"));
                c.setNome_cat(rs.getString("nome_cat"));
                
            }
            
            pst.close();
            
        } catch (SQLException ex) {
            
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        return c;
    }

    @Override
    public boolean update(Categoria e) {
        boolean resposta = false;
        
        try {
            String sql = "UPDATE categoria SET nome_cat=? WHERE id_categoria=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            
            
            pst.setString(1, e.getNome_cat());
            pst.setLong(2, e.getId_categoria());
            
            int resultado = pst.executeUpdate();
            
            if(resultado > 0) resposta = true;
            
            pst.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return resposta;
    }

    @Override
    public boolean delete(Categoria e) {
        boolean resposta = false;
        
        try {
            String sql = "DELETE FROM categoria WHERE id_categoria=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, e.getId_categoria());
            
            int resultado = pst.executeUpdate();
            
            if(resultado>0) resposta = true;
            
            pst.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        
        return resposta;
    }
    
}
