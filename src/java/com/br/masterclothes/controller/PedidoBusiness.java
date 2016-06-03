/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.controller;

import com.br.masterclothes.model.dao.ItensPedidoDAO;
import com.br.masterclothes.model.dao.PedidoDAO;
import com.br.masterclothes.model.dao.PessoaFisicaDAO;
import com.br.masterclothes.model.dao.ProdutoDAO;
import com.br.masterclothes.model.entities.ItensPedido;
import com.br.masterclothes.model.entities.Pedido;
import com.br.masterclothes.model.entities.Produto;
import com.br.masterclothes.model.entities.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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
@WebServlet(name = "PedidoBusiness", urlPatterns = {"/PedidoBusiness"})
public class PedidoBusiness extends HttpServlet {

    private String command;
    double sub = 0.0;
    private List<ItensPedido> prodAdds = new ArrayList<>();
    Pedido pd = null;

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

            if (command.endsWith("addPedido")) {

                long chave = 0;

                ItensPedido itp = new ItensPedido();
                Produto p = new Produto();
                ProdutoDAO pdao = new ProdutoDAO();
                ItensPedidoDAO itdao = new ItensPedidoDAO();
                PessoaFisicaDAO pfdao = new PessoaFisicaDAO();

                p = pdao.readById(Long.parseLong(request.getParameter("id_produto")));

                itp.setProduto(p);
                itp.setQuantidade(Integer.parseInt(request.getParameter("qtde")));
                itp.setTotal(p.getPreco());

                prodAdds.add(itp);

                sub = calcTotal();

                if (pd == null) {
                    iniciaPedido();
                    long id_user = Long.parseLong(request.getParameter("id_pfisica"));
                    pd.setPrecoTotal(calcTotal());
                    pd.setUsuario(pfdao.readById(id_user).getUsuario());
                    pd.setItensPedido(prodAdds);
                    System.out.println(pd);
                }
                chave = itdao.create(itp, pd);
                System.out.println(chave);
                if (chave == 1) {
                    System.out.println("Sucesso!");
                } else {
                    System.out.println("erro ao inserir no banco!");
                }

                HttpSession sessionPedido = request.getSession();
                sessionPedido.setAttribute("prodAdds", prodAdds);
                sessionPedido.setAttribute("sub", sub);
                response.sendRedirect("sacola.jsp");

                //addPedido
            } else if (command.endsWith("remover")) {

                for (ItensPedido it : prodAdds) {
                    if (it.getProduto().getId_produto() == Integer.parseInt(request.getParameter("id_produto"))) {
                        prodAdds.remove(it);
                    }
                }

                HttpSession sessionPedido = request.getSession();
                sessionPedido.setAttribute("prodAdds", prodAdds);
                response.sendRedirect("sacola.jsp");
                //remover
            } else if (command.endsWith("alterar")) {

                //alterar
            } else if (command.endsWith("finalizar")) {

                long id_user = Long.parseLong(request.getParameter("id_pfisica"));

                PedidoDAO pdao = new PedidoDAO();
                PessoaFisicaDAO pfdao = new PessoaFisicaDAO();

                pd.setPrecoTotal(calcTotal());
                pd.setUsuario(pfdao.readById(id_user).getUsuario());
                pd.setItensPedido(prodAdds);

                pdao.create(pd);

                HttpSession sessionPedidoFim = request.getSession();
                sessionPedidoFim.setAttribute("pfim", pd);
                response.sendRedirect("pedidoFim.jsp");
                //finalizar
            } else if (command.endsWith("concluido")) {

                sub = 0.00;
                prodAdds = null;

                HttpSession sessionConcluido = request.getSession();
                sessionConcluido.setAttribute("pfim", null);
                sessionConcluido.setAttribute("sub", 0.00);
                sessionConcluido.setAttribute("prodAdds", null);
                response.sendRedirect("index.jsp");
                //concluido
            }

        }
    }

    protected Double calcTotal() {
        sub = 0.00;

        for (ItensPedido it : prodAdds) {
            sub += it.getTotal() * it.getQuantidade();
        }

        return sub;
    }

    protected void iniciaPedido() {
        pd = new Pedido();
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
