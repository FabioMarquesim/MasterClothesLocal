/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.model.dao;

import com.br.masterclothes.model.connection.SingleConnection;
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
 * @author fabio e andre
 */
public class ProdutoDAO implements GenericDAO<Produto> {
    
    private Connection connection;
    
    public ProdutoDAO() {
        
        connection = SingleConnection.getInstance().getConnection();
        
    }
    
    @Override
    public long create(Produto e) {
        long chave = -1;
        
        try {
            
            String sql = "INSERT INTO produtos (preco, nome, descricao, tamanho, cor, status, fk_categoria, publico) VALUES (?,?,?,?,?,?,?,?)";
            
            PreparedStatement pst = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            
            pst.setDouble(1, e.getPreco());
            pst.setString(2, e.getNome());
            pst.setString(3, e.getDescricao());
            pst.setString(4, e.getTamanho());
            pst.setString(5, e.getCor());
            pst.setBoolean(6, e.isStatus());
            pst.setLong(7, e.getCategoria());
            pst.setLong(8, e.getPublico());
            
            int resultado = pst.executeUpdate();
            
            if (resultado == 0) {
                System.out.println("PROBLEMA no cadastro do produto");
                
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
    public List<Produto> read() {
        
        List<Produto> produtos = new ArrayList<>();
        
        try {
            
            String sql = "SELECT * FROM produtos";
            PreparedStatement pst = connection.prepareStatement(sql);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs != null && rs.next()) {
                
                Produto p = new Produto();
                
                p.setPreco(rs.getDouble("preco"));
                p.setId_produto(rs.getLong("id_produto"));
                p.setNome(rs.getString("nome"));
                p.setDescricao(rs.getString("descricao"));
                p.setTamanho(rs.getString("tamanho"));
                p.setCor(rs.getString("cor"));
                p.setStatus(rs.getBoolean("status"));
                p.setCategoria(rs.getLong("fk_categoria"));
                p.setPublico(rs.getLong("publico"));
                
                produtos.add(p);
                
            }
            
            pst.close();
            
        } catch (SQLException ex) {
            
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        return produtos;
        
    }
    
    @Override
    public Produto readById(long id) {
        
       Produto p = null;
        
        try {
            
            String sql = "SELECT * FROM produtos WHERE id_produto=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, id);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs != null && rs.next()) {
                
                p = new Produto();
                
                p.setPreco(rs.getDouble("preco"));
                p.setId_produto(rs.getLong("id_produto"));
                p.setNome(rs.getString("nome"));
                p.setDescricao(rs.getString("descricao"));
                p.setTamanho(rs.getString("tamanho"));
                p.setCor(rs.getString("cor"));
                p.setStatus(rs.getBoolean("status"));
                p.setCategoria(rs.getLong("fk_categoria"));
                p.setPublico(rs.getLong("publico"));
                
            }
            
            pst.close();
            
        } catch (SQLException ex) {
            
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        return p;
        
    }
    
    public List<Produto> readByPublico(long publico) {
       
       List<Produto> produtos = new ArrayList<>();
       Produto p = null;
        
        try {
            
            String sql = "SELECT * FROM produtos WHERE publico=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, publico);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs != null && rs.next()) {
                
                p = new Produto();
                
                p.setPreco(rs.getDouble("preco"));
                p.setId_produto(rs.getLong("id_produto"));
                p.setNome(rs.getString("nome"));
                p.setDescricao(rs.getString("descricao"));
                p.setTamanho(rs.getString("tamanho"));
                p.setCor(rs.getString("cor"));
                p.setStatus(rs.getBoolean("status"));
                p.setCategoria(rs.getLong("fk_categoria"));
                p.setPublico(rs.getLong("publico"));
                
                produtos.add(p);
                
            }
            
            pst.close();
            
        } catch (SQLException ex) {
            
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        return produtos;
        
    }
    
    @Override
    public boolean update(Produto e) {
        
        boolean resposta = false;
        
        try {
            String sql = "UPDATE produtos SET preco=?, nome=?, descricao=?, tamanho=?, cor=?, status=?, fk_categoria=?, publico=? WHERE id_produto=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            
            
            pst.setDouble(1, e.getPreco());
            pst.setString(2, e.getNome());
            pst.setString(3, e.getDescricao());
            pst.setString(4, e.getTamanho());
            pst.setString(5, e.getCor());
            pst.setBoolean(6, e.isStatus());
            pst.setLong(7, e.getCategoria());
            pst.setLong(8, e.getPublico());
            pst.setLong(9, e.getId_produto());
            
            int resultado = pst.executeUpdate();
            
            if(resultado > 0) resposta = true;
            
            pst.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return resposta;
        
    }
    
    @Override
    public boolean delete(Produto e) {
       
        boolean resposta = false;
        
        try {
            String sql = "DELETE FROM produtos WHERE id_produto=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, e.getId_produto());
            
            int resultado = pst.executeUpdate();
            
            if(resultado>0) resposta = true;
            
            pst.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        
        return resposta;
        
    }
    
}
