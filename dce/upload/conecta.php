<?

$host = 'localhost';
$banco = 'upload';
$usuario1 = 'dceurifw';
$senha = '123456';

$conexao = mysql_connect($host,$usuario1,$senha)or die('N�o foi possivel efetuar a conex�o');
mysql_select_db($banco);

?>
