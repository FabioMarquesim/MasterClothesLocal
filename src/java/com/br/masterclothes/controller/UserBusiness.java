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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 31595006
 */
@WebServlet(name = "UserBusiness", urlPatterns = {"/UserBusiness"})
public class UserBusiness extends HttpServlet {

    private String command;
    private String username;
    private String pwd;
    private PessoaFisicaDAO pfisicadao;
    private String nome;
    private String sobrenome;
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
    private PessoaFisica pfisica;

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

                pfisica = pfisicadao.readByUsername(username);

                if (pfisica == null) {
                    response.sendRedirect("login.jsp");
                    System.out.println("O valor pfisica está null");
                    System.out.println("=========================");

                } else if (pwd.equals(pfisica.getUsuario().getSenha())) {
                    Cookie c1;
                    Cookie c2;
                    if (request.getParameter("lembrar") != null) {
                        c1 = new Cookie("username", pfisica.getUsuario().getNome_usuario());
                        c1.setMaxAge(60 * 60 * 24); //tempo em segundos (1 dia)
                        c2 = new Cookie("password", pfisica.getUsuario().getSenha());
                        c2.setMaxAge(60 * 60 * 24);

                    } else {
                        c1 = new Cookie("username", "");
                        c1.setMaxAge(-1);
                        c2 = new Cookie("password", "");
                        c2.setMaxAge(-1);
                    }
                    response.addCookie(c1);
                    response.addCookie(c2);

                    HttpSession session = request.getSession();
                    session.setAttribute("pfisica", pfisica);
                    response.sendRedirect("index.jsp");
                    System.out.println("Redirecionando...");

                } else {
                    request.getSession().setAttribute("erro", "Usuário ou senha incorretos.");
                    response.sendRedirect("login.jsp");
                }
                //fim login
            } else if (command.endsWith("cadastrar")) {

                //Nome
                nome = request.getParameter("firstName");
                //Sobrenome
                sobrenome = request.getParameter("lastName");
                //DataNasc
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                java.util.Date dataNasc = null;
                try {
                    dataNasc = sdf.parse(request.getParameter("dataNasc"));
                } catch (ParseException ex) {
                    Logger.getLogger(UserBusiness.class.getName()).log(Level.SEVERE, null, ex);
                }
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
                    request.getSession().setAttribute("erro", "Senhas nã Compativeis");
                    response.sendRedirect("cadastro.jsp");
                } else if (cliente2 != null) {
                    request.getSession().setAttribute("erro", "Usuario já existe, tente outro nome!");
                    response.sendRedirect("cadastro.jsp");
                } else if (!email.equals(email2)) {
                    request.getSession().setAttribute("erro", "Email não compativel");
                    response.sendRedirect("cadastro.jsp");
                } else {
                    Usuario usuario = new Usuario();
                    usuario.setNome_usuario(username);
                    usuario.setSenha(pwd);
                    usuario.setTipo(1);

                    pfisica = new PessoaFisica();
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
                    pfisica.setDataNasc(dataNasc);
                    pfisica.setUsuario(usuario);

                    long chave = pfisicadao.create(pfisica);
                    if (chave == -1) {
                        request.getSession().setAttribute("erro", "Erro ao inserir no banco!");
                        response.sendRedirect("cadastro.jsp");
                    } else {
                        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                        rd.forward(request, response);
                    }
                }
                //Fim Cadastrar    
            } else if (command.endsWith("sair")) {

                request.getSession().setAttribute("pfisica", null);
                request.getSession().setAttribute("prodAdds", null);
                request.getSession().setAttribute("sub", 0.00);
                response.sendRedirect("index.jsp");

                //Fim sair da conta
            } else if (command.endsWith("trocarSenha")) {

                String senhaAtual = request.getParameter("senhaAtual");
                PessoaFisica c = (PessoaFisica) request.getSession().getAttribute("pfisica");
                System.out.println("Senha do FORM: " + senhaAtual);
                System.out.println("Senha do Banco" + c.getUsuario().getSenha());

                if (senhaAtual.equals(c.getUsuario().getSenha())) {
                    //usuário autenticado
                    String novaSenha = request.getParameter("novaSenha");
                    String novaSenha2 = request.getParameter("novaSenha2");

                    if (novaSenha.equals(novaSenha2)) {
                        //pode trocar a senha
                        c.getUsuario().setSenha(novaSenha);
                        boolean resp = pfisicadao.update(c);
                        if (resp) {
                            request.getSession().setAttribute("erro", "Atualizado com Sucesso!");
                            response.sendRedirect("minha_conta.jsp");
                        } else {
                            System.out.println(c);
                            request.getSession().setAttribute("erro", "Houve um problema na conexão. Tente novamente!");
                            response.sendRedirect("minha_conta.jsp");
                        }
                    } else {
                        request.getSession().setAttribute("erro", "Senha nova não confere!");
                        response.sendRedirect("minha_conta.jsp");
                    }
                } else {
                    request.getSession().setAttribute("erro", "Senha atual não confere!");
                    response.sendRedirect("minha_conta.jsp");
                }
                //FIM Trocar Senha
            } else if (command.endsWith("apagar")) {
                PessoaFisica cliente = (PessoaFisica) request.getSession().getAttribute("pfisica");
                System.out.println(cliente.getId_pfisica());
                boolean resp = pfisicadao.delete(cliente);
                if (resp) {
                    response.sendRedirect("index.jsp");
                } else {
                    request.getSession().setAttribute("erro", "Erro ao Apagar Conta!");
                    response.sendRedirect("minha_conta.jsp");
                }
                request.getSession().invalidate();
                Cookie c1 = new Cookie("username", "");
                c1.setMaxAge(-1);
                Cookie c2 = new Cookie("password", "");
                c2.setMaxAge(-1);
                response.addCookie(c1);
                response.addCookie(c2);

                //Fim Apagar Conta
            } else if (command.endsWith("alterarDados")) {
                PessoaFisica cliente = (PessoaFisica) request.getSession().getAttribute("pfisica");
                cliente.setNome(request.getParameter("firstName"));
                cliente.setSobrenome(request.getParameter("lastName"));
                String newEmail = request.getParameter("email");

                if (!newEmail.equals(request.getParameter("email2"))) {
                    request.getSession().setAttribute("erro2", "Os email não confere!");
                    response.sendRedirect("minha_conta.jsp");
                } else {
                    cliente.setEmail(newEmail);
                }

                request.getSession().setAttribute("pfisica", cliente);
                pfisicadao.update(cliente);
                request.getSession().setAttribute("erro2", "Alterado com Sucesso!");
                response.sendRedirect("minha_conta.jsp");
                //Fim alterar Dados
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
