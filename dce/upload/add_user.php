<?
include "conecta.php";

$arquivo = isset($_FILES['arquivo']) ? $_FILES['arquivo'] : FALSE; 

// C�digo acima... com as demais verifica�oes... 

// Diret�rio para onde o arquivo ser� movido 
$diretorio = "./arquivos/"; 

// Substitui espa�os por underscores no nome do arquivo 
$nome = str_replace(" ", "_", $arquivo["name"]); 

// Todas as letras em min�sculo 
$nome = strtolower($nome); 

// Caminho completo do arquivo 
$nome = $diretorio . $nome; 

$arquivo_nome = $arquivo["name"];

// Tudo ok! Ent�o, move o arquivo 
if (move_uploaded_file($arquivo['tmp_name'], $nome)) { 
    echo ""; 
} 
else { 
    echo ""; 
} 
$gerente2 = $_POST["gerente2"];
$dados = $_POST["dados"];


$sql = "INSERT INTO cadastro (gerente2, dados, arquivo_nome) VALUES ('$gerente2', '$dados', '$arquivo_nome')";
if(mysql_query($sql)) {
echo "<div align=center><br><br><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\">O seu cadastro foi efetuado com sucesso!!</font></div>";
}else{
echo "<div align=center><br><br><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\">N�o foi possivel efetuar o seu cadastro!</font></div>";
}
 
?>
<title>Cadastro - B&aacute;sico Brasil</title>
<LINK href="style.css" type=text/css rel=stylesheet>

<body bgcolor="#f5f5f5" text="#000000" link="#000000" vlink="#000000" alink="#000000">
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
