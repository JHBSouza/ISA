<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISA ChatBot</title>
<link rel="icon" href="favicon.png">
<link rel="stylesheet" type="text/css" href="style/main.css" />
</head>
<body>
	<section class="container">
		<h2 class="title">ISA ChatBot</h2>
		<div class="chat-container"></div>
		<input type="text" id="question" name="question" class="field"
			placeholder="Escreva sua mensagem" />
		<div class="controls">
			<button id="sendQuestion">Enviar</button>
			<button id="getVoiceButton">Gerar Voz</button>
			<button id="recordButton">Gravar</button>
			<button id="pauseButton" disabled>Pausar</button>
			<button id="stopButton" disabled>Parar</button>
		</div>
	</section>
	<script src="https://cdn.rawgit.com/mattdiamond/Recorderjs/08e7abd9/dist/recorder.js"></script>
	<!-- Para a versão dois utilizar o script main.js -->
	<script type="text/javascript" src="scripts/assistant.js"></script>
	<script type="text/javascript" src="scripts/tts.js"></script>
	<script type="text/javascript" src="scripts/stt.js"></script>
</body>
</html>