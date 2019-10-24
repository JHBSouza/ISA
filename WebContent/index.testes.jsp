 <%@ page language="java" contentType="text/html; charset=UTF-8"%>
  <!DOCTYPE html>
  <html lang="pt-br">
    <head>
      <meta charset="utf-8">
      <title></title>
      <link rel="stylesheet" href="style2.css">
    </head>
    <body>


    <nav>
      <div class="nav-geral">

        <ul>
          <li><a href="index.menu.jsp">Inicio</a></li>
          <li><a href="index.bot.jsp">Apostilas</a></li>
          <li><a href="index.testes.jsp">Testes</a></li>
          <li class="sair"><a href="index.login.jsp">Sair</a></li>
        </ul>

      </div>
    </nav>

      <div class="main">
        <div class="titulo">

        <h1>Bem vindo aluno, aqui você poderá testar seus conhecimentos, e complementar seus estudos.
       </h1>

        </div>
        <div class="perguntas">
          <div class="pegunta1">
            <h1>Para um bom texto deve-se:</h1>

        <label for="alternativa1">Escrever errado</label>
        <input type="radio" name="pergunta1"  id="alternativa1"><br>
        <label for="alternativa2">Ser coeso</label>
        <input type="radio" name="pergunta1"  id="alternativa2"><br>
        <label for="alternativa3">Escrever aleatóriamente</label>
        <input type="radio" name="pergunta1"  id="alternativa3"><br>
        <label for="alternativa4">Ler poucos livros e notícias</label>
        <input type="radio" name="pergunta1"  id="alternativa4"><br>

        <h3>Alternativa Correta: Ser Coeso</h3>

        </div>

        <div class="pegunta2">
          <h1>Em um texto empresarial, não se deve esquecer de:</h1>

      <label for="alternativa5">Escrever errado</label>
      <input type="radio" name="pergunta2"  id="alternativa5"><br>
      <label for="alternativa6">Ser coeso</label>
      <input type="radio" name="pergunta2"  id="alternativa6"><br>
      <label for="alternativa7">Escrever aleatóriamente</label>
      <input type="radio" name="pergunta2"  id="alternativa7"><br>
      <label for="alternativa8">Ler poucos livros e notícias</label>
      <input type="radio" name="pergunta2"  id="alternativa8"><br>

      </div>

      <div class="pegunta3">
        <h1>Qual o tipo de leitura usada quando vamos ler um texto empresarial?</h1>

    <label for="alternativa9">leitura mecânica</label>
    <input type="radio" name="pergunta3" id="alternativa9"><br>
    <label for="alternativa10">Leitura romana</label>
    <input type="radio" name="pergunta3"  id="alternativa10"><br>
    <label for="alternativa11">Leitura interpretativa</label>
    <input type="radio" name="pergunta3"  id="alternativa11"><br>
    <label for="alternativa12">Leitura alternativa</label>
    <input type="radio" name="pergunta3"  id="alternativa12"><br>

    </div>
    <div class="pegunta4">
      <h1>Qual os tipos de leitores, quando falamos sobre leitura digital?</h1>

  <label for="alternativa13">leitor explorador </label>
  <input type="radio" name="pergunta4"  id="alternativa13"><br>
  <label for="alternativa14">Leitor Usuário</label>
  <input type="radio" name="pergunta4"  id="alternativa14"><br>
  <label for="alternativa15">Leitor Coautor</label>
  <input type="radio" name="pergunta4"  id="alternativa15"><br>
  <label for="alternativa16">Leitor dinâmico</label>
  <input type="radio" name="pergunta4" id="alternativa16"><br>

  </div>

</div><br>

<div class="mostrar">
<div id="mostra">
<a href="javascript:revelar();">Ver respostas</a>
        </div>
      </div>




</div>
      </div>
      <script>
      function revelar() {
          // document.getElementByClassName("mostrar").style.display = 'run-in';
          document.getElementsByTagName('h3').style.display = 'run-in';
      }

      </script>

    </body>
  </html>
