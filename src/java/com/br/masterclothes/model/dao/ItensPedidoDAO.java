/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.model.dao;

import com.br.masterclothes.model.connection.SingleConnection;
import com.br.masterclothes.model.entities.ItensPedido;
import com.br.masterclothes.model.entities.Pedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author fabio
 */
public class ItensPedidoDAO implements GenericDAO<ItensPedido>{

    private Connection connection;
    
    public ItensPedidoDAO() {
        
        connection = SingleConnection.getInstance().getConnection();
        
    }

    public long create(ItensPedido e, Pedido p) {
        long chave = -1;
        
        try {
            
            String sql = "INSERT INTO item_pedido (fk_pedido, fk_produto, quantidade, total_item) VALUES (?,?,?,?)";
            
            PreparedStatement pst = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            
            pst.setLong(1, p.getId_pedido());
            pst.setLong(2, e.getProduto().getId_produto());
            pst.setLong(3, e.getQuantidade());
            pst.setDouble(4, e.getTotal());
            
            int resultado = pst.executeUpdate();
            
            if (resultado == 0) {
                System.out.println("PROBLEMA no cadastro do item");
                
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
    public List<ItensPedido> read() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ItensPedido readById(long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(ItensPedido e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(ItensPedido e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public long create(ItensPedido e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
