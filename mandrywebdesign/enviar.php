<?
//pega as variaveis por POST
$nome      = $_POST["nome"];
$email     = $_POST["email"];
$assunto   = $_POST["assunto"];
$mensagem  = $_POST["mensagem"];

global $email; //fun��o para validar a vari�vel $email no script todo

$data      = date("d/m/y");                     //fun��o para pegar a data de envio do e-mail
$ip        = $_SERVER['REMOTE_ADDR'];           //fun��o para pegar o ip do usu�rio
$navegador = $_SERVER['HTTP_USER_AGENT'];       //fun��o para pegar o navegador do visitante
$hora      = date("H:i");                       //para pegar a hora com a fun��o date

//aqui envia o e-mail para voc�
mail ("mandry@brturbo.com",                       //email aonde o php vai enviar os dados do form
      "$assunto",
      "Nome: $nome\nMensagem: $mensagem\nData: $data\nIp: $ip\nNavegador: $navegador\nHora: $hora",
      "From: $email"
     );

//aqui s�o as configura��es para enviar o e-mail para o visitante
$site   = "mandry@brturbo.com";                    //o e-mail que aparecer� na caixa postal do visitante
$titulo = "RE: E-mail Enviado";                  //titulo da mensagem enviada para o visitante
$msg    = "Sua mensagem foi enviada com sucesso...muito obrigado por visitar a Mandry Web Design!!!Logo iremos retornar a resposta...";

//aqui envia o e-mail de auto-resposta para o visitante
mail("$email",
     "$titulo",
     "$msg",
     "From: $site"
    );

?>
