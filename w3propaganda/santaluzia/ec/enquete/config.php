<?php

# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
// altere aqui as configura��es para o seu DB
$hostname_conexao = "localhost"; // host do seu db
$database_conexao = "santaluzia"; // nome do seu banco de dados
$username_conexao = "julio"; // usu�rios mysql
$password_conexao = "santa900"; // senha do seu usu�rio do mysqlse n�o tiver senha � s� descomentar a linha
$conexao = mysql_pconnect($hostname_conexao, $username_conexao, $password_conexao) or trigger_error(mysql_error(),E_USER_ERROR); 

// n�o mexa aqui! s� c vc saber o q vc est� fazendo OK!
$host = $hostname_conexao;
$user = $username_conexao;
$pass = $password_conexao;
$db = $database_conexao;
?>