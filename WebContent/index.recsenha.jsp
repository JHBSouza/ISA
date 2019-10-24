<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title></title>
        <link rel="stylesheet" href="index.cadastro.css">
    </head>
    <body>
        <div class="conteiner">
            <div class="card card_senha">
                <div class="conteudo">
                    <h2 class="header senha">Recuperar senha</h2>
                        <div class="conteinerBar">
                            <div class="bar1"> </div>
                                <p class="textBar">preencha os campos</p>
                            <div class="bar2"> </div>
                        </div>
                        <h3>Digite seu email</h3>
                        <form class="" action="index.bot.jsp" method="post">
                            <input class="inputTodos" required id="email" type="email" placeholder="E-mail" name="" value="">
                            <div class="termo">
                                <input class="checkTermo" type="checkbox" name="" value="">
                                <p>Não sou um robo</p>
                            </div>
                            <input type="submit"  class="botaoCd login" type="button" name="button">
                        </form>
                        <p class="cdex">Mandaremos uma senha nova para seu e-mail</p>
                    <p class="cdex">Voltar para tela de <a href="index.login.jsp">login</a></p>
                </div>
            </div>
        </div>
    </body>
</html>
