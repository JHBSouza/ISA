<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title></title>
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="index.cadastro.css">
    </head>
    <body>
        <div class="conteiner">
            <div class="card card_login">
                <div class="conteudo">
                    <h2 class="header">Login</h2>
                    <h3>Fazer login</h3>
                        <div class="conteinerBar">
                            <div class="bar1"> </div>
                                <p class="textBar">preencha os campos</p>
                            <div class="bar2"> </div>
                        </div>
                        <form class="" action="index.menu.jsp" method="post">
                            <input class="inputTodos" required id="email" type="email" placeholder="E-mail" name="" value="">
                            <input class="inputTodos" required type="password" placeholder="Senha" name="" value="">
                            <p class="cdex">Esqueci minha senha. <a href="index.recsenha.jsp">Recuperar</a></p>
                            <input type="submit"  class="botaoCd login" type="button" name="button">
                        </form>
                    <div class="termo">
                        <input class="checkTermo" type="checkbox" name="" value="">
                        <p>Não sou um robo</p>
                    </div>
                    <p class="cdex">Não tem cadastro. <a href="index.cadastro.jsp">Fazer cadastro</a></p>
                </div>
            </div>
        </div>
        <script>
            function HabiDsabi(){
            if(document.getElementById('habi').checked == true){
                document.getElementById('envia').disabled = ""
            }
            if(document.getElementById('habi').checked == false){
                document.getElementById('envia').disabled = "disabled"

            }
            }
        </script>
    </body>
</html>
