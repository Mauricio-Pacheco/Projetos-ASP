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
<!-- #include file="df.asp" -->
<%
'INICIO DO HTML
'-----------------------------------------------------------------------------------------------------%>


<html>
	 <head>
	  <title><%=tituloloja%></title>

	  <style type="text/css">
	  <!--
	  a:link       { color: <%=cor4%> }
	  a:visited    { color: <%=cor4%> }
	  a:hover      { color: <%=cor5%> }
      .menu:link { color:<%=fontebranca%>; text-decoration: none;}
      .menu:visited { color:<%=fontebranca%>; text-decoration: none;}
      .menu:hover { color:<%=fontebranca%>; text-decoration: underline;}
	  .baixo:link { color:<%=cor4%>; text-decoration: none;}
      .baixo:visited { color:<%=cor4%>; text-decoration: none;}
      .baixo:hover { color:<%=cor4%>; text-decoration: underline;}
	  -->
	  </style>

  
<body bgcolor="#ffffff" topmargin=0 leftmargin=0 marginwidth=0 marginheight=0 text=<%=cor4%>>

			 </head>
<%
'Personaliza os links do  menu se o cliente estiver efetuando a compra
if session("usuario") = "" then
link = "fechapedido.asp?compra=login"
else
link = "fechapedido.asp?compra=ok"
end if
if session("ende1") = "" then
link = link
else
link = "formaspagamento.asp"
end if%>

	<basefont face="<%=fonte%>">
	<%
set rs = abredb.execute("SELECT nome FROM clientes where email='" & Cripto(Session("usuario"),true) & "'")
if rs.eof then
strNome = "Visitante"
else
nomeq = Cripto(rs("nome"),false)
numeroz = Instr(1,nomeq," ")
var5000 = Left(nomeq,numeroz)
if var5000 = "" then
var5000 = nomeq
else
var5000 =  Left(nomeq,numeroz)
end if
strNome = Trim(var5000)
strNome2 = Trim(Cripto(rs("nome"),false))
end if
rs.close
set rs = nothing
%>	  
	  
<%
'Personaliza o menu se o cliente estiver logado
 if session("usuario") = "" then %>
<%else%>

		
<%end if%>
		
		
		
		
