/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.masterclothes.controller;

import com.br.masterclothes.model.dao.PessoaFisicaDAO;
import com.br.masterclothes.model.entities.PessoaFisica;
import com.br.masterclothes.model.entities.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 31595006
 */
@WebServlet(name = "UserBusiness", urlPatterns = {"/UserBusiness"})
public class UserBusiness extends HttpServlet {

    private String command;
    private String username;
    private String password;
    private String pwd;
    private PessoaFisicaDAO pfisicadao;
    private String nome;
    private String sobrenome;
    private Date datanasc;
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
            username = request.getParameter("username");
            pwd = request.getParameter("password");
            pfisicadao = new PessoaFisicaDAO();

            if (command.endsWith("login")) {// Executa o Login

                PessoaFisica pfisica = pfisicadao.readByUsername(username);

                if (pfisica == null) {
                    response.sendRedirect("login.jsp");
                    System.out.println("O valor pfisica está null");
                } else if (pwd.equals(pfisica.getUsuario().getSenha())) {

                    //Primeira Forma
                    response.sendRedirect("home.jsp"); //Apenas redireciona a Pagina
                    //Segunda Forma
                    //RequestDispatcher rd = request.getRequestDispatcher("/home.jsp"); //Mantem url mudando o conteudo
                    //rd.forward(request, response);
                    //Terceira Forma
                    //RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    //rd.include(request, response);

                } else {
                    out.println("DEU RUIM!");
                    out.println("SENHA INCORRETA");
                }
                //fim login
            } else if (command.endsWith("cadastrar")) {

                //Nome
                nome = request.getParameter("firstName");
                //Sobrenome
                sobrenome = request.getParameter("lastName");
                //DataNasc
                //datanasc = request.getParameter("datanasc");
                //Nome Usuario
                username = request.getParameter("username");
                //Senha
                pwd = request.getParameter("pwd");
                //Confirma Senha
                String pwd2 = request.getParameter("pwd2");
                //Sexo - optional
                sexo = request.getParameter("genre");
                //Tel
                telefone = request.getParameter("phone");
                //Email
                email = request.getParameter("email");
                //Confirma Email
                String email2 = request.getParameter("email2");
                //ZipCode
                cep = Integer.parseInt(request.getParameter("zipcode"));
                //Logradouro
                logradouro = request.getParameter("street");
                //Complemento
                complemento = request.getParameter("complement");
                //Numero
                numero = Integer.parseInt(request.getParameter("adrnumber"));
                //Bairro
                bairro = request.getParameter("nbhood");
                //Cidade
                cidade = request.getParameter("city");
                //Estado
                estado = request.getParameter("state");
                //País
                pais = request.getParameter("country");

                PessoaFisica cliente2 = pfisicadao.readByUsername(username);

                if (!pwd.equals(pwd2)) {
                    out.println("Deu Ruim, Senhas não compativeis");
                } else if (cliente2 != null) {
                    out.println("DEU RUIM! Usuario já existe, tente outro nome!");
                } else if (!email.equals(email2)) {
                    out.println("Deu Ruim, Email não compativel");
                } else {
                    Usuario usuario = new Usuario();
                    usuario.setNome_usuario(username);
                    usuario.setSenha(pwd);
                    usuario.setTipo(1);

                    PessoaFisica pfisica = new PessoaFisica();
                    pfisica.setNome(nome);
                    pfisica.setSobrenome(sobrenome);
                    switch (sexo) {
                        case "Homem":
                            pfisica.setSexo("M");
                            break;
                        case "Mulher":
                            pfisica.setSexo("F");
                            break;
                        default:
                            pfisica.setSexo("O");
                            break;
                    }
                    pfisica.setTelefone(telefone);
                    pfisica.setEmail(email);
                    pfisica.setCep(cep);
                    pfisica.setLogradouro(logradouro);
                    pfisica.setComplemento(complemento);
                    pfisica.setNumero(numero);
                    pfisica.setBairro(bairro);
                    pfisica.setCidade(cidade);
                    pfisica.setEstado(estado);
                    pfisica.setPais(pais);
                    pfisica.setUsuario(usuario);

                    long chave = pfisicadao.create(pfisica);
                    if (chave == -1) {
                        out.println("DEU RUIM! Erro ao inserir no banco!");
                    } else {
                        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                        rd.forward(request, response);
                    }
                }
                //Fim Cadastrar    
            } else if (command.endsWith("sair")) {
                
                //Fim sair da conta
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
