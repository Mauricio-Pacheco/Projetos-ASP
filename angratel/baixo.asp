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
  	  </td></tr></table>
	</table>
	
	<div id="layer1" style="position:absolute; z-index:8;background-color:ffffff; width: 775px;">
	  <table border=0 bgcolor=#ffffff cellpadding=0 cellspacing=0 width="778"><tr>
    <td height="20"  bgcolor="<%=cor2%>" width="100%"><font color="#333333" size="1" face="Verdana, Arial, Helvetica, sans-serif"><font face="<%=fonte%>" style=font-size:11px;color:<%=fontebranca%>>
      </font>
      <div align="center"><font color="#FFFFFF" size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;&nbsp; 
          <%response.write "� Copyright 2005/"&year(now)&" - "&nomeloja&"&nbsp;"%> 
        - Desenvolvimento: <a href="http://www.casadaweb.net" target=_blank><font color="#FFFFFF" size="1" face="Verdana, Arial, Helvetica, sans-serif">Casa da Web</font></a>
          <%
'Fecha o banco de bados
abredb.close
set abredb = nothing

if err.number <> 0 then
Select Case Err.number
Case 0
Case 424
Case 3021
Case -2147352567
Case Else
Response.clear
Response.Write "<title>Erro!</title><center><br><br><font face=tahoma style=font-size:11px><h1>Erro no Sistema!</h1><br><br>N�. do erro:" & Err.number & "<br>Descri��o do erro:" & Err.Description & "<br><hr size=1><br><font color=red><b>Informe ao administrador do sistema os erros acima!</b></font><br><br>Pedimos desculpas pela inconveni�ncia.<br><br><hr size=1><br>Se voc� estiver inserindo dados em sua loja N�O use: aspas simples ('), barra (/) e par�ntes (())<br><Br><a href=""javascript: history.go(-1);"">Voltar para p�gina anterior</a>"
End Select
else
end if
%>
      </font> </div></td>
  </tr>
	</table>
	</div>
	</div>
</form>