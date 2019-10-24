<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title></title>
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="index.cadastro.css">
        <link rel="stylesheet" href="js/index.cadastro.js">
    </head>
    <body>
        <div class="conteiner">
            <div class="card">
                <div class="conteudo">
                    <form class="" action="index.login.jsp" method="post">
                        <h2 class="header">Cadastro</h2>
                        <h3>Criar conta</h3>
                            <div class="conteinerBar">
                                <div class="bar1"> </div>
                                    <p class="textBar">preencha os campos</p>
                                <div class="bar2"> </div>
                            </div>
                        <input class="inputTodos" required id="nome" type="text" placeholder="Nome" name="" value="">
                        <input class="inputTodos" required id="rm" type="text" placeholder="Rm" name="" value="">
                        <input class="inputTodos" required id="DataNascimento" type="text" placeholder="Data de Nascimento" name="" value="">
                        <input class="inputTodos" required id="cpf" type="text" placeholder="CPF" name="" value="">
                        <input class="inputTodos" required id="email" type="email" placeholder="E-mail" name="" value="">
                        <input class="inputTodos" required type="password" placeholder="Senha" name="" value="">
                        <input class="inputTodos" required type="password" placeholder="Verificar senha" name="" value="">
                        <input type="submit"  class="botaoCd" type="button" name="button">
                    </form>
                    <div class="termo">
                        <input class="checkTermo" type="checkbox" name="" value="">
                        <p>Declaro que li e aceito os <a href="index.termo.jsp">Termos</a></p>
                    </div>
                        <p class="cdex">Já tenho um cadastro. <a href="index.login.jsp">Fazer login</a></p>
                </div>
            </div>
        </div>
    </body>
</html>
