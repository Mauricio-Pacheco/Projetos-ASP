<%
'#########################################################################################
'#----------------------------------------------------------------------------------------
'#########################################################################################
'#
'#  C�DIGO: VirtuaStore Vers�o 1.2 - Copyright 2001-2003 VirtuaWorks                                    
'#  URL: www.virtuastore.com.br / www.virtuaworks.com.br                                                           
'#  E-MAIL: webmaster@virtuaworks.com.br                                                                                          
'#  AUTORES: Ot�vio Dias(Desenvolvedor) / Jone Bandinelli(Desenvolvedor) / Daniel Kern(Revis�o)                
'# 
'#     Este programa � um software livre; voc� pode redistribu�-lo e/ou 
'#     modific�-lo sob os termos do GNU General Public License como 
'#     publicado pela Free Software Foundation.
'#     � importante lembrar que qualquer altera��o feita no programa 
'#     deve ser informada e enviada para os criadores, atrav�s de e-mail 
'#     ou da p�gina de onde foi baixado o c�digo.
'#
'#  //-------------------------------------------------------------------------------------
'#  // LEIA COM ATEN��O: O software VirtuaStore 1.2 deve conter as frases
'#  // "Powered by VirtuaStore 1.2" ou "Software derivado de VirtuaStore 1.2" e 
'#  // o link para o site http://www.virtuastore.com.br no cr�ditos da 
'#  // sua loja virtual para ser utilizado gratuitamente. Se o link e/ou uma das 
'#  // frases n�o estiver presentes ou visiveis este software deixar� de ser
'#  // considerado Open-source(gratuito) e o uso sem autoriza��o ter� 
'#  // penalidades judiciais de acordo com as leis de pirataria de software.
'#  //--------------------------------------------------------------------------------------
'#      
'#     Este programa � distribu�do com a esperan�a de que lhe seja �til,
'#     por�m SEM NENHUMA GARANTIA. Veja a GNU General Public License
'#     abaixo (GNU Licen�a P�blica Geral) para mais detalhes.
'# 
'#     Voc� deve receber a c�pia da Licen�a GNU com este programa, 
'#     caso contr�rio escreva para
'#     Free Software Foundation, Inc., 59 Temple Place, Suite 330, 
'#     Boston, MA  02111-1307  USA
'# 
'#     Para enviar suas d�vidas, sugest�es e/ou contratar a VirtuaWorks 
'#     Internet Design entre em contato atrav�s do e-mail 
'#     contato@virtuaworks.com.br ou pelo endere�o abaixo: 
'#     Rua Ven�ncio Aires, 1001 - Niter�i - Canoas - RS - Brasil. Cep 92110-000.
'#
'#     Para ajuda e suporte acesse: http://www.virtuastore.com.br
'#
'#     BOM PROVEITO!          
'#     Equipe VirtuaStore
'#     []'s
'#
'#########################################################################################
'#----------------------------------------------------------------------------------------
'#########################################################################################

'IN�CIO DO C�DIGO
'----------------------------------------------------------------------------------------------------------------
'Este c�digo est� otimizado e roda tanto em Windows 2000/NT/XP/ME/98 quanto em servidores UNIX-LINUX com chilli!ASP
%>
<!--#include file="topo.asp"-->
<%
'Chama as variaveis
strUser = request.form("usuario")
strIdcompra = Request.Form("idcompra")
strPedido = Request.Form("pedido")
strNome = Request.Form("nome")
strCartao = Request.Form("cartao")
strPresente = Request.Form("presentesim")
msgpres = Request.Form("cartao")
strEndereco = request.form("endereco")
strBairro = request.form("bairro")
strCidade = request.form("cidade")
strEstado = request.form("estadoz")
strOutropais = request.form("outroz")
strCep = request.form("cepzz")
strPais = request.form("pais")
strFone = request.form("fone")	
intOrderID = Request.form("idcompra")
fretezz = request.form("frete")
totocompraz = request.form("totalcompra")

'Valida os dados
if strPais = "" then
strPais = "Brasil"
end if
If strEndereco = "" then
erro = "- " & strLg174 & "<br>" 
abredb.close
set abredb = nothing
response.redirect "fechapedido.asp?compra=ok&erro2="&erro&"&endereco="&strEndereco&"&bairro="&strBairro&"&cidade="&strCidade&"&cep="&strCep&"&fone="&strFone&"&estado="&strEstado&"&pais="&strPais&"&outropais="&strOutropais&"&#pagamento"
end if
If strBairro = "" then
erro = "- " & strLg175 & "<br>" 
abredb.close
set abredb = nothing
response.redirect "fechapedido.asp?compra=ok&erro2="&erro&"&endereco="&strEndereco&"&bairro="&strBairro&"&cidade="&strCidade&"&cep="&strCep&"&fone="&strFone&"&estado="&strEstado&"&pais="&strPais&"&outropais="&strOutropais&"&#pagamento"
end if
If strCidade = "" then
erro = "- " & strLg176 & "<br>" 
abredb.close
set abredb = nothing
response.redirect "fechapedido.asp?compra=ok&erro2="&erro&"&endereco="&strEndereco&"&bairro="&strBairro&"&cidade="&strCidade&"&cep="&strCep&"&fone="&strFone&"&estado="&strEstado&"&pais="&strPais&"&outropais="&strOutropais&"&#pagamento"
end if
If strCep = "" then
erro = "- " & strLg177 & "<br>" 
abredb.close
set abredb = nothing
response.redirect "fechapedido.asp?compra=ok&erro2="&erro&"&endereco="&strEndereco&"&bairro="&strBairro&"&cidade="&strCidade&"&cep="&strCep&"&fone="&strFone&"&estado="&strEstado&"&pais="&strPais&"&outropais="&strOutropais&"&#pagamento"
end if
If strFone = "" then
erro = "- " & strLg178 & "<br>" 
abredb.close
set abredb = nothing
response.redirect "fechapedido.asp?compra=ok&erro2="&erro&"&endereco="&strEndereco&"&bairro="&strBairro&"&cidade="&strCidade&"&cep="&strCep&"&fone="&strFone&"&estado="&strEstado&"&pais="&strPais&"&outropais="&strOutropais&"&#pagamento"
end if

'Ve se foi escohida a op��o presente
if strPresente = "on" then
strPresente = "Sim"
else
strPresente = "N�o"
end if

'Formata a data
if CStr(len(Day(now))) = CStr("1") then
diazz =  "0"&Day(now)
else
diazz = Day(now)
end if
if CStr(len(Month(now))) = CStr("1") then
meszz =  "0"&Month(now)
else
meszz = Month(now)
end if
datazz = diazz&"/"&meszz&"/"&Year(now)

'SQL para gravar a compra
textosql = "UPDATE compras SET clienteid = '"&Cripto(request.form("usuario"),true)&"', presente = '"&strPresente&"', " _ 
& "msgpresente = '"&msgpres&"', status = 'Compra em Aberto', frete = '"&Cripto(request.form("frete"),true)&"', " _
& "totalcompra = '"&Cripto(request.form("totalcompra"),true)&"', endentrega = '"&Cripto(request.form("endereco"),true)&"', " _
& "bairroentrega = '"&Cripto(request.form("bairro"),true)&"', cidadeentrega = '"&Cripto(request.form("cidade"),true)&"', " _
& "estadoentrega = '"&request.form("estadoz")&"', " _
& "cepentrega = '"&Cripto(request.form("cepzz"),true)&"', paisentrega = 'Brasil', telentrega = '"&Cripto(request.form("fone"),true)&"', " _
& " datacompra = '"&datazz&"' WHERE idcompra = " & strIdcompra & ";"

'Grava a compra
set cadnovo = abredb.Execute(textosql)

'Cria as sess�es para prosseguir a compra
session("frete1") = fretezz
session("pedido1") = strPedido
session("nome1") = strNome
session("ende1") = strEndereco
session("bairro1") = strBairro 
session("cidade1") = strCidade
session("est1") = strEstado
session("cep1") = strCep
session("pais1") = strPais
session("fone1") = strFone
session("compra1") = totocompraz

'Fecha o banco de dados
abredb.close
set abredb = nothing

response.redirect "formaspagamento.asp"
%>
