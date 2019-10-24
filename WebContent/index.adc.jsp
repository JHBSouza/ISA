<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>a</title>
        <link rel="stylesheet" href="index.cadastro.css">
    </head>
    <body>
        <div class="conteiner">
          <h2 class="voltarMenu" onclick="window.location='index.menu.jsp';">Voltar para menu</h2>
            <div class="card_apostilas">
              <div class="conteudo_apostila">
                <form class="" action="index.login.html" method="post">
                    <h2 class="header">Editar dados pessoais</h2>
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
                    <input type="submit"  class="botaoCd" type="button" name="button">
                </form>
              </div>
            </div>
        </div>
    </body>
</html>
