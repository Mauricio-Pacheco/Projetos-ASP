<!-- #include file = "upload_funcoes.asp" -->
<%
Dim nome, comentario, titulo, data, hora, g, h


' Chamando Fun��es, que fazem o Upload funcionar
byteCount = Request.TotalBytes
RequestBin = Request.BinaryRead(byteCount)
Set UploadRequest = CreateObject("Scripting.Dictionary")
BuildUploadRequest RequestBin

g = date

h = time

comentario = UploadRequest.Item("comentario").Item("Value")
titulo = UploadRequest.Item("titulo").Item("Value")


' Tipo de arquivo que esta sendo enviado
tipo_foto = UploadRequest.Item("foto").Item("ContentType")

' Caminho completo dos arquivos enviados
caminho_foto = UploadRequest.Item("foto").Item("FileName")

' Nome dos arquivos enviados
nome_foto = Right(caminho_foto,Len(caminho_foto)-InstrRev(caminho_foto,"\"))

' Conteudo binario dos arquivos enviados
foto = UploadRequest.Item("foto").Item("Value")

' pasta onde as imagens serao guardadas
pasta = Server.MapPath("anexos/")
nome_foto = "/"&nome_foto

' pasta + nome dos arquivos
cfoto = "anexos" + nome_foto

' Fazendo o Upload do arquivo selecionado
if foto <> "" then
Set ScriptObject = Server.CreateObject("Scripting.FileSystemObject")
Set MyFile = ScriptObject.CreateTextFile(pasta & nome_foto)
For i = 1 to LenB(foto)
MyFile.Write chr(AscB(MidB(foto,i,1)))
Next
MyFile.Close
end if

'Conex�o com o Banco de Dados
Set wm = Server.CreateObject("ADODB.Connection")

'abre o banco de dados 

wm.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("../free.mdb")
Set rs = Server.CreateObject("ADODB.Recordset")

'Insere o novo usu�rio na tabela usuarios

Comando = "INSERT INTO convenios (comentario, titulo, data, hora, foto)" & "VALUES('" & comentario & "','" & titulo & "','" & g& "','" & h& "','" & cfoto & "')"
wm.Execute(Comando)


%>
<div align="center">
  <p>&nbsp;</p>
  <p><img src="logo4.jpg" width="300" height="89" /></p>
  <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Texto enviado 
    com sucesso!</font></p>
  <p><font size="2"><a href="texto.asp"><font face="Verdana, Arial, Helvetica, sans-serif">ENVIAR OUTRA FORMATURA </font></a></font></p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
