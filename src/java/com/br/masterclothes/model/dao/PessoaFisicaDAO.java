package com.br.masterclothes.model.dao;

/**
 *
 * @author fabio
 */
import com.br.masterclothes.model.connection.SingleConnection;
import com.br.masterclothes.model.entities.PessoaFisica;
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
 * @author 1147106
 */
public class PessoaFisicaDAO implements GenericDAO<PessoaFisica>{
    
    private Connection connection;
        
    public PessoaFisicaDAO(){
        //Passo 1 - criar conexão
        connection = SingleConnection.getInstance().getConnection();
    }
    
    @Override
    public long create(PessoaFisica e) {
        int resultado = -1;
        long chave = -1;
        
        try {
            //Passo 2 - Criar o statement
            String sql = "INSERT INTO pessoa_fisica(nome, sobrenome, sexo, telefone, email, cep, logradouro, complemento, numero, bairro, cidade, estado, pais) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            pst.setString(1, e.getNome());
            pst.setString(2, e.getSobrenome());
            pst.setString(3, e.getSexo());
            pst.setString(4, e.getTelefone());
            pst.setString(5, e.getEmail());
            pst.setInt(6, e.getCep());
            pst.setString(7, e.getLogradouro());
            pst.setString(8, e.getComplemento());
            pst.setInt(9, e.getNumero());
            pst.setString(10, e.getBairro());
            pst.setString(11, e.getCidade());
            pst.setString(12, e.getEstado());
            pst.setString(13, e.getPais());
            
            
            //Passo 3 - Executar a query
            resultado = pst.executeUpdate();
            
            //Passo 4 - Tratar os resultados
            if(resultado>0) {
                //Recuperar a chave inserida na tabela cliente
                ResultSet rs2 = pst.getGeneratedKeys();
                if(rs2!=null && rs2.next()){
                    chave = rs2.getLong(1);
                }
                
                //Passo 2 b
                String sql2 = "INSERT INTO usuario VALUES(?,?,?,?)";
                PreparedStatement pst2 = connection.prepareStatement(sql2);
                pst2.setLong(1, chave);
                pst2.setString(2, e.getUsuario().getNome_usuario());
                pst2.setString(3, e.getUsuario().getSenha());
                pst2.setInt(4, e.getUsuario().getTipo());
                
                //Passo 3 b
                int resultado2 = pst2.executeUpdate();
                
                //Passo 4 b
                if(resultado2==0) System.out.println("PROBLEMA no cadastro do usuario");;
                
                //Passo 5 b
                pst2.close();
            }
            
            
            //Passo 5 - fechar o statement
            pst.close();
        } catch (SQLException ex) {
            Logger.getLogger(PessoaFisicaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return chave;
    }

    @Override
    public List<PessoaFisica> read() {
        List<PessoaFisica> clientes = new ArrayList<>();  
        try {
            
            //Passo 2 - criar o statement
            String sql = "SELECT * FROM cliente INNER JOIN usuario "
                    + "ON id_cliente=id_usuario";
            PreparedStatement pst = connection.prepareStatement(sql);
            
            //Passo 3 - executar a consulta
            ResultSet rs = pst.executeQuery();
            
            //Passo 4 - tratar os resultados
            while( rs!=null && rs.next() ){
                PessoaFisica p = new PessoaFisica();
                p.setId_pfisica(rs.getLong("id_cliente")  );
                p.setNome(  rs.getString("nome")  );
                Usuario u = new Usuario( rs.getLong("id_usuario"), 
                        rs.getString("nome_usuario"),
                        rs.getString("senha"),
                        rs.getInt("tipo")
                );
                p.setUsuario(u);
                clientes.add(p);
            }
            
            //Passo 5 - fecha a statement
            pst.close();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(PessoaFisicaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return clientes;
    }

    @Override
    public PessoaFisica readById(long id) {
        PessoaFisica pessoaFisica = null;
        try {
            
            //Passo 2
            String sql = "SELECT * FROM cliente "
                    + "INNER JOIN usuario ON id_cliente=id_usuario "
                    + "WHERE id_cliente = ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, id);
            
            //Passo 3
            ResultSet rs = pst.executeQuery();
            
            //Passo 4
            while( rs!=null && rs.next() ){
                pessoaFisica = new PessoaFisica();
                pessoaFisica.setNome( rs.getString("nome") );
                pessoaFisica.setId_pfisica(rs.getLong("id_cliente")  );
                Usuario u = new Usuario( rs.getLong("id_usuario"), 
                        rs.getString("nome_usuario"),
                        rs.getString("senha"),
                        rs.getInt("tipo")
                );
                pessoaFisica.setUsuario(u);
            }
            
            //Passo 5
            pst.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(PessoaFisicaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return pessoaFisica;
    }
    
    public PessoaFisica readByUsername(String username) {
        PessoaFisica pessoaFisica = null;
        try {
            
            //Passo 2
            String sql = "SELECT * FROM pessoa_fisica INNER JOIN usuario ON id_pfisica=id_usuario WHERE nome_usuario = ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, username);
            
            //Passo 3
            ResultSet rs = pst.executeQuery();
            
            //Passo 4
            while( rs!=null && rs.next() ){
                pessoaFisica = new PessoaFisica();
                pessoaFisica.setId_pfisica(rs.getLong("id_pfisica")  );
                pessoaFisica.setNome( rs.getString("nome") );
                pessoaFisica.setSobrenome(rs.getString("sobrenome"));
                pessoaFisica.setSexo(rs.getString("sexo"));
                pessoaFisica.setTelefone(rs.getString("telefone"));
                pessoaFisica.setEmail(rs.getString("email"));
                pessoaFisica.setCep(rs.getInt("cep"));
                pessoaFisica.setLogradouro(rs.getString("logradouro"));
                pessoaFisica.setComplemento(rs.getString("complemento"));
                pessoaFisica.setNumero(rs.getInt("numero"));
                pessoaFisica.setBairro(rs.getString("bairro"));
                pessoaFisica.setCidade(rs.getString("cidade"));
                pessoaFisica.setEstado(rs.getString("estado"));
                pessoaFisica.setPais(rs.getString("pais"));
                Usuario u = new Usuario( 
                        rs.getLong("id_usuario"), 
                        rs.getString("nome_usuario"),
                        rs.getString("senha"),
                        rs.getInt("tipo")
                );
                pessoaFisica.setUsuario(u);
            }
            
            //Passo 5
            pst.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(PessoaFisicaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return pessoaFisica;
    }

    @Override
    public boolean update(PessoaFisica e) {
        int resultado = -1;
        boolean resposta = false;
        try {
            //Passo 2 - Criar o statement
            String sql = "UPDATE cliente SET nome=? WHERE id_cliente=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, e.getNome());
            pst.setLong(2, e.getId_pfisica());
            
            //Passo 3 - Executar a query
            resultado = pst.executeUpdate();
            
            //Passo 4 - Tratar os resultados
            if(resultado>0) {
                String sql2 = "UPDATE usuario SET nome_usuario=?,"
                        + "senha=?, tipo=? WHERE id_usuario=?";
                PreparedStatement pst2 = connection.prepareStatement(sql2);
                pst2.setString(1, e.getUsuario().getNome_usuario());
                pst2.setString(2, e.getUsuario().getSenha());
                pst2.setInt(3, e.getUsuario().getTipo());
                pst2.setLong(4, e.getUsuario().getId_usuario());
                
                int resultado2 = pst2.executeUpdate();
                if(resultado2>0) resposta = true;
                
                pst2.close();
            }
            
            //Passo 5 - fechar o statement
            pst.close();
        } catch (SQLException ex) {
            Logger.getLogger(PessoaFisicaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return resposta;
    }

    @Override
    public boolean delete(PessoaFisica e) {
        int resultado = -1;
        boolean resposta = false;
        try {
            //Passo 2 - Criar o statement
            String sql = "DELETE FROM cliente WHERE id_cliente=?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setLong(1, e.getId_pfisica());
            
            //Passo 3 - Executar a query
            resultado = pst.executeUpdate();
            
            //Passo 4 - Tratar os resultados
            if(resultado>0) resposta = true;
            
            //Passo 5 - fechar o statement
            pst.close();
        } catch (SQLException ex) {
            Logger.getLogger(PessoaFisicaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return resposta;
    }
    
}
