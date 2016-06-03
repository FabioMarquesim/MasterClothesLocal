/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.controller;

import com.br.masterclothes.model.dao.CategoriaDAO;
import com.br.masterclothes.model.dao.ProdutoDAO;
import com.br.masterclothes.model.entities.Categoria;
import com.br.masterclothes.model.entities.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author fabio
 */
@WebServlet(name = "ProdutoBusiness", urlPatterns = {"/ProdutoBusiness"})
public class ProdutoBusiness extends HttpServlet {

    private String command;
    private long id_produto;
    private String nome;
    private String descricao;
    private String tamanho;
    private double preco;
    private long categoria;
    private long publico;
    private String cor;
    private Produto prod;
    private List<Produto> listaProds = null;
    private List<Produto> listaProdsMasc = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            command = request.getParameter("command");

            if (command.endsWith("inicio")) {

                List<Produto> produtos = new ArrayList<>();
                List<Categoria> categorias = new ArrayList<>();
                ProdutoDAO pdao = new ProdutoDAO();
                CategoriaDAO cdao = new CategoriaDAO();
                
                listaProds = null;
                listaProdsMasc = null;

                produtos = pdao.read();
                categorias = cdao.read();

                HttpSession session = request.getSession();
                session.setAttribute("produtos", produtos);
                session.setAttribute("categorias", categorias);
                session.setAttribute("listaProds", listaProds);
                session.setAttribute("listaProdsMasc", listaProdsMasc);
                response.sendRedirect("produto.jsp");

                //Inicio
            } else if (command.endsWith("adicionar")) {

                ProdutoDAO pdao = new ProdutoDAO();

                nome = request.getParameter("nome_prod");
                descricao = request.getParameter("descricao");
                preco = Double.parseDouble(request.getParameter("preco"));
                categoria = Long.parseLong(request.getParameter("categoria"));
                publico = Long.parseLong(request.getParameter("publico"));
                cor = request.getParameter("cor");
                tamanho = request.getParameter("tamanho");

                prod = new Produto();
                prod.setNome(nome);
                prod.setDescricao(descricao);
                prod.setPreco(preco);
                prod.setCategoria(categoria);
                prod.setPublico(publico);
                prod.setCor(cor);
                prod.setTamanho(tamanho);

                long chave = pdao.create(prod);
                if (chave == -1) {
                    request.getSession().setAttribute("erro", "Erro ao inserir no banco!");
                    response.sendRedirect("adicionar_produto.jsp");
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("produto.jsp");
                    rd.forward(request, response);
                }
                //Adicionar
            } else if (command.endsWith("publicar")) {
                Produto p = new Produto();
                ProdutoDAO pdao = new ProdutoDAO();

                long id_prodForm = Long.parseLong(request.getParameter("produtoPublicar"));

                p = pdao.readById(id_prodForm);

                p.setStatus(true);

                boolean resposta = pdao.update(p);

                if (resposta) {
                    response.sendRedirect("produto.jsp");

                } else {
                    request.getSession().setAttribute("erro", "Alteração com problemas!");
                    response.sendRedirect("produto.jsp");
                }

                //Publicar
            } else if (command.endsWith("alterar")) {
                Produto p = new Produto();
                ProdutoDAO pdao = new ProdutoDAO();

                long id_prodForm = Long.parseLong(request.getParameter("produtoAlterar"));

                p = pdao.readById(id_prodForm);

                HttpSession session = request.getSession();
                session.setAttribute("produtoAlt", p);
                response.sendRedirect("alterar_produto.jsp");

                //Alterar
            } else if (command.endsWith("apagar")) {
                Produto p = new Produto();
                ProdutoDAO pdao = new ProdutoDAO();

                long id_prodForm = Long.parseLong(request.getParameter("produtoExcluir"));

                p = pdao.readById(id_prodForm);

                boolean resp = pdao.delete(p);

                if (resp) {
                    response.sendRedirect("produto.jsp");
                } else {
                    request.getSession().setAttribute("erro", "Erro ao apagar produto!");
                    response.sendRedirect("produto.jsp");
                }

                //Apagar
            } else if(command.endsWith("alterarBanco")){
                
                Produto pb = new Produto();
                ProdutoDAO pbdao = new ProdutoDAO();

                pb.setNome(request.getParameter("nome_prod"));
                pb.setDescricao(request.getParameter("descricao"));
                pb.setPreco(Double.parseDouble(request.getParameter("preco")));
                pb.setCategoria(Long.parseLong(request.getParameter("fk_categoria")));
                pb.setPublico(Long.parseLong(request.getParameter("publico")));
                pb.setCor(request.getParameter("cor"));
                pb.setTamanho(request.getParameter("tamanho"));
                pb.setId_produto(Long.parseLong(request.getParameter("id_prod")));
                pb.setStatus(Boolean.parseBoolean("status"));

                System.out.println(pb);
                
                boolean chave = pbdao.update(pb);
                if (!chave) {
                    request.getSession().setAttribute("erro", "Erro ao alterar no banco!");
                    response.sendRedirect("alterar_produto.jsp");
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("produto.jsp");
                    rd.forward(request, response);
                }
                
                //AlterarBanco
            }else if (command.endsWith("preencheFem")) {
                ProdutoDAO pdao = new ProdutoDAO();

                //Criar Vetor de Produtos e colocar na sessão
                //depois substituir pela consulta no banco
                //Mulher é do tipo 2
                listaProds = pdao.readByPublico(2);

                HttpSession sessionFem = request.getSession();
                sessionFem.setAttribute("listaProds", listaProds);
                response.sendRedirect("loja_fem.jsp");

                //PreencheFem
            } else if (command.endsWith("preencheMasc")) {
                ProdutoDAO pdao = new ProdutoDAO();

                //Criar Vetor de Produtos e colocar na sessão
                //depois substituir pela consulta no banco
                //Homem é do tipo 1
                listaProdsMasc = pdao.readByPublico(1);

                HttpSession sessionMasc = request.getSession();
                sessionMasc.setAttribute("listaProdsMasc", listaProdsMasc);
                response.sendRedirect("loja_masc.jsp");

                //PreencheMasc
            } else if (command.endsWith("direcionaPag")) {
                
                Produto prodItem = new Produto();
                ProdutoDAO pdao = new ProdutoDAO();

                long produtoSel = Long.parseLong(request.getParameter("produtoSel"));

                prodItem = pdao.readById(produtoSel);

                System.out.println(prodItem);

                HttpSession sessionItem = request.getSession();
                sessionItem.setAttribute("prodItem", prodItem);
                response.sendRedirect("loja_item.jsp");

                //DirecionaPag
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
