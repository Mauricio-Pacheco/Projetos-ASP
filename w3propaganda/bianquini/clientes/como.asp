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
<!-- #include file="topo.asp" -->
<% if request.querystring("pagina") = "2" then %>
   	  <table><tr><td align="left" valign="top">
	  				 <table border="0" cellspacing="4" cellpadding="4" width=590><tr><td> <font face="<%=fonte%>" style=font-size:11px;color:000000> <a href=default.asp style=text-decoration:none; onMouseOut="window.status='';return true;" onMouseOver="window.status='Home';return true;"><b>Home</b></a> � Como Comprar?<br><br><div align=left> <table border=0 cellspacing=0 width=100% cellpadding=0><tr><td height=5></td></tr><tr><td height=1 bgcolor=<%=cor3%>></td></tr><tr><td height=5></td></tr></table></div><font face="<%=fonte%>" style=font-size:13px><strong><br>Como comprar na <%=nomeloja%></strong></font> - <font face="<%=fonte%>" style=font-size:10px>P�gina <B>2</B> de <B>3</B> </p><div align=center>
					 		<table align=center width=550 border=0><tr><td valign=center><font face="<%=fonte%>"  style=font-size:11px color=000000><b>Carrinho de Compras (Cont.)</b><br><div align=justify>Al�m disso, seu carrinho de compras controla todo o seu pedido, clicando sobre os bot�es: <br><br>&nbsp;&nbsp;&nbsp;&nbsp;<b>�</b> O bot�o <img src="<%=dirlingua%>/imagens/continuar.gif"> permite acessar a home principal, voltar a navegar pela loja e escolher outros produtos.<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>�</b> O bot�o <img src="<%=dirlingua%>/imagens/atualiza.gif"> permite visualizar a quantidade correta dos produtos e o real valor a ser pago por cada um caso voc� tenha alterado a quantidade do produto desejado. <br>&nbsp;&nbsp;&nbsp;&nbsp;<b>�</b> Para remover algum item clique na <img src="<%=dirlingua%>/imagens/del.gif" border="0"> (lixeira) no lado do produto a ser excluido.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;<b>�</b> Selecionando o cliente voc� estar� indicando qual dos seus clientes efetuar� o pagamento. <br>Ap�s terminar este procedimento, clique sobre o bot�o <img src="<%=dirlingua%>/imagens/prosseguir.gif" border="0">.<br></td></tr>
							</table><table border=0 cellspacing=0 width=100% cellpadding=0><tr><td height=5></td></tr><tr><td height=1 bgcolor=<%=cor3%>></td></tr><tr><td height=5></td></tr></table><A HREF=como.asp?pagina=1 style=text-decoration:none onMouseOut="window.status='';return true;" onMouseOver="window.status='P�gina Anterior';return true;"><font face="<%=fonte%>" style=font-size:11px>:: <b>P�gina Anterior</b> ::</font></A> <font color=bcbcbc>|</font> <A HREF=como.asp?pagina=3 style=text-decoration:none onMouseOut="window.status='';return true;" onMouseOver="window.status='Pr�xima P�gina';return true;"><font face="<%=fonte%>" style=font-size:11px>:: <b>Pr�xima P�gina</b> ::</font></A></td></tr>
					</table></td></tr>
	  </table>
	 <!-- #include file="baixo.asp" -->
<%else if request.querystring("pagina") = "3" then %>
	   <table><tr><td align="left" valign="top">
	   				  <table border="0" cellspacing="4" cellpadding="4" width=590><tr><td> <font face="<%=fonte%>" style=font-size:11px;color:000000> <a href=default.asp style=text-decoration:none; onMouseOut="window.status='';return true;" onMouseOver="window.status='Home';return true;"><b>Home</b></a> � Como Comprar?<br><br><div align=left> <table border=0 cellspacing=0 width=100% cellpadding=0><tr><td height=5></td></tr><tr><td height=1 bgcolor=<%=cor3%>></td></tr><tr><td height=5></td></tr></table>  </div><font face="<%=fonte%>" style=font-size:13px><strong><br>Como comprar na <%=nomeloja%></strong></font> - <font face="<%=fonte%>" style=font-size:10px>P�gina <B>3</B> de <B>3</B> </p><div align=center>
					  		 <table align=center width=550 border=0>
							 		<tr><td><br><font face="<%=fonte%>"  style=font-size:11px color=000000><b>Entrega e Pagamento</b><br><div align=justify>&nbsp;&nbsp;&nbsp;Aqui voc� volta a confirmar se todas as informa��es do seu pedido est�o corretas e define qual o endere�o de entrega e como deseja pagar seu pedido. Esta p�gina � dividida em 2 partes distintas:<br><br>&nbsp;&nbsp;&nbsp;&nbsp;<b>�</b> Digite o endere�o para entrega do seu pedido.<br>&nbsp;&nbsp;&nbsp;&nbsp;<b>�</b> Voc� poder� escolher como pagar seu pedido. Lembre-se que ap�s fechar seu pedido, n�o ser� poss�vel qualquer altera��o.<br><br>Ap�s concluir todos os passos, clique sobre o bot�o <img src="<%=dirlingua%>/imagens/prosseguir.gif" border="0">. Na p�gina final voc� ver� os dados do seu pedido.<br><br>Clique em <img src="<%=dirlingua%>/imagens/finaliza.gif" border="0"> para concluir seu pedido!</td></tr>
							 </table><table border=0 cellspacing=0 width=100% cellpadding=0><tr><td height=5></td></tr><tr><td height=1 bgcolor=<%=cor3%>></td></tr><tr><td height=5></td></tr></table><A HREF=como.asp?pagina=2 style=text-decoration:none onMouseOut="window.status='';return true;" onMouseOver="window.status='P�gina Anterior';return true;"><font face="<%=fonte%>" style=font-size:11px>:: <b>P�gina Anterior</b> ::</font></A> <font color=bcbcbc>| <A HREF=default.asp style=text-decoration:none onMouseOut="window.status='';return true;" onMouseOver="window.status='P�gina Principal';return true;"><font face="<%=fonte%>" style=font-size:11px>:: <b>P�gina Principal</b> ::</font></A></td></tr>
					 </table></td></tr>
	  </table>
	  <!-- #include file="baixo.asp" -->
<%else%>
		<table><tr><td align="left" valign="top">
					   <table border="0" cellspacing="4" cellpadding="4" width=590>
					    <tr><td><font face="<%=fonte%>" style=font-size:11px;color:000000> <a href=default.asp style=text-decoration:none; onMouseOut="window.status='';return true;" onMouseOver="window.status='Home';return true;"><b>Home</b></a> � Como Comprar?<br><br><div align=left> <table border=0 cellspacing=0 width=100% cellpadding=0><tr><td height=5></td></tr><tr><td height=1 bgcolor=<%=cor3%>></td></tr><tr><td height=5></td></tr></table></div><font face="<%=fonte%>" style=font-size:13px><strong><br>Como comprar na <%=nomeloja%></strong></font> - <font face="<%=fonte%>" style=font-size:10px>P�gina <B>1</B> de <B>3</B> </p><div align=center><table align=center width=550 border=0>
						<tr><td><font face="<%=fonte%>"  style=font-size:11px color=000000><b>Escolha do produto</b><br><div align=justify>&nbsp;&nbsp;&nbsp;Ao encontrar o produto desejado, clique sobre &nbsp;<img src="<%=dirlingua%>/imagens/comprar_2.gif" border="0">&nbsp;&nbsp; para comprar o produto e adicionar ele no seu carrinho de compras.</td>
					<tr><td><font face="<%=fonte%>"  style=font-size:11px color=000000><b>Carrinho de Compras</b><br><div align=justify>&nbsp;&nbsp;&nbsp;Ao clicar sobre o bot�o &nbsp;<img src="<%=dirlingua%>/imagens/comprar_2.gif"  border="0">&nbsp;, voc� coloca o produto escolhido em seu <i>"Carrinho de Compras"</i>, que mostra todas as informa��es sobre sua compra. Nele voc� obt�m todas as informa��es sobre o(s) produto(s) adquiridos.</td></tr>
					  </table><table border=0 cellspacing=0 width=100% cellpadding=0><tr><td height=5></td></tr><tr><td height=1 bgcolor=<%=cor3%>></td></tr><tr><td height=5></td></tr></table><A HREF=como.asp?pagina=2 style=text-decoration:none onMouseOut="window.status='';return true;" onMouseOver="window.status='Pr�xima P�gina';return true;"><font face="<%=fonte%>" style=font-size:11px>:: <b>Pr�xima P�gina</b> ::</font></A></div></ul></td></tr>
		</table></td></tr>
	</table>
	<!-- #include file="baixo.asp" -->
<%
end if
end if%>