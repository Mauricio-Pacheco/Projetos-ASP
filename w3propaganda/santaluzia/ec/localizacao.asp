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
<style>
.texto {
	FONT-SIZE: 10px; 
}
</style>
<!-- #include file="topo.asp" -->
<%
'Requisita os dados para o e-mail
if request.querystring("acao") = "ajuda" then
strNome = request.form("nome")
strEmail = request.form("email")
strDuv = request.form("duvida")
strAssunto = request.form("assunto")
strMsg = request.form("msg")
strCCEmail = ""
If strNome = "" then

response.redirect "ajuda_email.asp?erro=- Por favor preencha o seu nome corretamente!&nome="&strNome&"&email="&strEmail&"&assunto="&strAssunto&"&msg="&strMsg
end if

'Verifica se o e-mail � exixtente
If strEmail = "" Or instr(strEmail, "@") = 0 Or instr(strEmail, ".") = 0 then
response.redirect "ajuda_email.asp?erro=- Por favor preencha o seu e-mail corretamente!&nome="&strNome&"&email="&strEmail&"&assunto="&strAssunto&"&msg="&strMsg
end if

'Valida a mensagem
If strMsg = "" then
response.redirect "ajuda_email.asp?erro=- Por favor escreva sua mensagem!&nome="&strNome&"&email="&strEmail&"&assunto="&strAssunto&"&msg="&strMsg
end if
If strAssunto = "" then
strAssunto = "Esclarecimento de d�vida do Cliente"
end if

'Corpo do e-mail
strMensagem = "Nome: " & strNome & vbCrLf & vbCrLf
strMensagem = strBody & vbCrLf & "Email: " & strEmail & vbCrLf & vbCrLf
strMensagem = strBody & "D�vida: " & strDuv & vbCrLf & vbCrLf
strMensagem = strMensagem & "Mensagem: " & strMsg & vbCrLf & vbCrLf

'Envia o e-mail
%><!--#include file="email.asp"-->
<%EnviaEmail Application("HostLoja"), Application("ComponenteLoja"), strEmail, "", emailloja, strAssunto, strMensagem%>

   			   	 <table><tr><td align="left" valign="top">
				 				<table border="0" cellspacing="4" cellpadding="4" width=810><tr><td><font face="tahoma,arial,helvetica" style=font-size:11px;color:000000> <a href=default.asp style=text-decoration:none; onMouseOut="window.status='';return true;" onMouseOver="window.status='<%=strLg4%>';return true;"><b><%=strLg4%></b></a> � <%=strLg14%><br><br><table border=0 cellspacing=0 width=100% cellpadding=0><tr><td height=5></td></tr><tr><td height=1 bgcolor=<%=cor3%>></td></tr><tr><td height=5></td></tr></table><br><br><p align=center><font style=font-size:17px; color=#000000><b><%=strLg124%></b></font></p><p align=center><%=strLg125%> <b><%=strNome%></b>, <%=strLg126%><br><%=strLg127%><br></p><p align=center></b><a href=default.asp><img src="<%=dirlingua%>/imagens/continuar.gif" onMouseOut="window.status='';return true;" onMouseOver="window.status='<%=strLg68%>';return true;" border=0></a></p> <br><hr size=1 color=<%=cor3%> width=100%></td></tr>
								</table></td></tr>
				</table>
				<!-- #include file="baixo.asp" -->
<%
response.end
else%>
	  	<script language="javascript">
			function limpa () {
			 document.registro1.nome.value = ''
			 document.registro1.email.value = ''
			 document.registro1.assunto.value = ''
			 document.registro1.msg.value = ''
			 document.registro1.duvida.value = '<%=strLg128%> <%=nomeloja%>?'
		   }
		</script>
				 <table><tr><td align="left" valign="top">
				 			<table border="0" cellspacing="4" cellpadding="4" width=810><tr><td><font face="<%=fonte%>" style=font-size:11px;color:000000> <a href=default.asp style=text-decoration:none; onMouseOut="window.status='';return true;" onMouseOver="window.status='<%=strLg4%>';return true;"><b><%=strLg4%></b></a> � Localiza&ccedil;&atilde;o<br><br><div align=left> <hr size=1 color=<%=cor3%> width=100%>  </div><font face="<%=fonte%>" style=font-size:13px><strong><br>Localiza��o �ptica Santa Luzia</strong></font> <font color=red size=1><font color="#4074A6"><%=request.querystring("erro")%></font></p><div align=center>
				 			      <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','760','height','415','src','mapa','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','mapa' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="760" height="415">
                                    <param name="movie" value="mapa.swf">
                                    <param name="quality" value="high">
                                    <embed src="mapa.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="760" height="415"></embed>
		 			          </object>
			 			      </noscript><br>
<br><div align=left> <hr size=1 color=<%=cor3%> width=100%></div></FORM></td></tr>
							</table></td></tr>
				</table>
			<!-- #include file="baixo.asp" -->
<%end if%>
