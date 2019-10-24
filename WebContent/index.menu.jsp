<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="index.menu.css">
  </head>
    <body>
    <div class="bot"  onclick="window.location='http://localhost:8080/JVL/index.jsp';"></div>
      <div class="header">
        <h2 class="sair" onclick="window.location='index.login.jsp';">Sair</h2>
      </div>
        <div class="container">
          <div class="conteudo">
            <h2>Menu Home</h2>
            <div onclick="window.location='index.bot.jsp';" class="menu1">

              <h1 class="ap">Apostilas</h1>
            </div>
            <div onclick="window.location='index.testes.jsp';" class="menu2">
              <h1 class="tt">Testes</h1>
            </div>
            <div onclick="window.location='index.adc.jsp';" class="menu3">
              <h1 class="Adc">Alterar dados cadastrais</h1>
            </div>
          </div>
        </div>
    </body>
</html>
