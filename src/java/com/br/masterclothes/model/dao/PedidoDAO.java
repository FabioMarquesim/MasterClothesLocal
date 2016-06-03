/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.model.dao;

import com.br.masterclothes.model.connection.SingleConnection;
import com.br.masterclothes.model.entities.Pedido;
import com.br.masterclothes.model.entities.PessoaFisica;
import com.br.masterclothes.model.entities.Produto;
import com.br.masterclothes.model.entities.Usuario;
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
public class PedidoDAO implements GenericDAO<Pedido>{

    private Connection connection;
    
    public PedidoDAO() {
        
        connection = SingleConnection.getInstance().getConnection();
        
    }
    
    @Override
    public long create(Pedido e) {
        long chave = -1;
        
        try {
            
            String sql = "INSERT INTO pedido (fk_cliente, total_pedido) VALUES (?,?)";
            
            PreparedStatement pst = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            
            pst.setDouble(1, e.getUsuario().getId_usuario());
            pst.setDouble(2, e.getPrecoTotal());
            
            int resultado = pst.executeUpdate();
            
            if (resultado == 0) {
                System.out.println("PROBLEMA no cadastro do pedido");
                
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
    public List<Pedido> read() {
        List<Pedido> pedidos = new ArrayList<>();
        
        try {
            
            String sql = "SELECT * FROM pedido";
            PreparedStatement pst = connection.prepareStatement(sql);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs != null && rs.next()) {
                
                Pedido p = new Pedido();
                PessoaFisicaDAO pfdao = new PessoaFisicaDAO();
                PessoaFisica pf = new PessoaFisica();
                
                pf = pfdao.readById(rs.getLong("fk_cliente"));
                
                p.setId_pedido(rs.getLong("id_pedido"));
                p.setPrecoTotal(rs.getDouble("total_pedido"));
                p.setUsuario(pf.getUsuario());
                
                pedidos.add(p);
                
            }
            
            pst.close();
            
        } catch (SQLException ex) {
            
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        return pedidos;
    }

    @Override
    public Pedido readById(long id) {
        Pedido p = null;
        
        try {
            
            String sql = "SELECT * FROM pedido WHERE id_pedido=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, id);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs != null && rs.next()) {
                
                p = new Pedido();
                PessoaFisicaDAO pfdao = new PessoaFisicaDAO();
                PessoaFisica pf = new PessoaFisica();
                
                pf = pfdao.readById(rs.getLong("fk_cliente"));
                
                p.setId_pedido(rs.getLong("id_pedido"));
                p.setPrecoTotal(rs.getDouble("total_pedido"));
                p.setUsuario(pf.getUsuario());
                
            }
            
            pst.close();
            
        } catch (SQLException ex) {
            
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        return p;
    }

    @Override
    public boolean update(Pedido e) {
        boolean resposta = false;
        
        try {
            String sql = "UPDATE pedido SET preco=?, nome=? WHERE id_pedido=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            
            
            pst.setDouble(1, e.getPrecoTotal());
            pst.setLong(2, e.getUsuario().getId_usuario());
            pst.setLong(3, e.getId_pedido());
            
            int resultado = pst.executeUpdate();
            
            if(resultado > 0) resposta = true;
            
            pst.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return resposta;
    }

    @Override
    public boolean delete(Pedido e) {
        boolean resposta = false;
        
        try {
            String sql = "DELETE FROM pedido WHERE id_pedido=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, e.getId_pedido());
            
            int resultado = pst.executeUpdate();
            
            if(resultado>0) resposta = true;
            
            pst.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        
        return resposta;
        
    }
    
}
