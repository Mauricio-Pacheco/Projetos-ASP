<%
Dim nome, comentario, data, hora, g, h

g = date

h = time

nome = request.form("nome")

comentario = request.form("comentario")

data = request.form("data")

hora = request.form("hora")

'Conex�o com o Banco de Dados
Set wm = Server.CreateObject("ADODB.Connection")

'abre o banco de dados 

wm.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("../dcebd/dcedata.mdb")
Set rs = Server.CreateObject("ADODB.Recordset")

'Insere o novo usu�rio na tabela usuarios

Comando = "INSERT INTO journal (nome, comentario, data, hora)" & "VALUES('" & nome & "','" & comentario & "','" & g& "','" & h& "')"
wm.Execute(Comando)


%>
<div align="center">
  <p>&nbsp;</p>
  <p><img src="../dce.jpg" width="202" height="103" /></p>
  <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Texto enviado 
    com sucesso!</font></p>
  <p><font size="2"><a href="texto.asp"><font face="Verdana, Arial, Helvetica, sans-serif">ENVIAR OUTRA NOT&Iacute;CIA </font></a></font></p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
