<?
$host = "localhost";
$user = "dceurifw";
$senha = "123456";
$dbname = "upload";
//conecta ao banco de dados
mysql_connect($host, $user, $senha) or die("N�o foi poss�vel conectar-se com o banco de dados");
//seleciona o banco de dados
mysql_select_db($dbname)or die("N�o foi poss�vel conectar-se com o banco de dados");
?>
