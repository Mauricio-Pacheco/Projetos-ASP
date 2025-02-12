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

Function EnviaEmail(Host,Componente,Email,NomeEmail,ParaEmail,Assunto,Mensagem)
Select Case Componente
Case "AspMail"
	 	on error resume next
	    Set eObjMail = Server.CreateObject("SMTPsvg.Mailer")
	    eObjMail.FromName = NomeEmail
	    eObjMail.FromAddress = Email
	    eObjMail.RemoteHost = Host
	    eObjMail.AddRecipient "", ParaEmail
	    eObjMail.Subject = Assunto
	    eObjMail.ContentType = "text/html"
	    eObjMail.BodyText = Mensagem	    
	    eObjMail.SendMail
	 	Set eObjMail = nothing

Case "AspEmail"
	    on error resume next
	    Set eObjMail = Server.CreateObject("Persits.MailSender")
	    eObjMail.Host = Host
	 	eObjMail.From = Email
	 	eObjMail.FromName = NomeEmail
	 	eObjMail.AddReplyTo Email
	 	eObjMail.AddAddress ParaEmail
	    eObjMail.Subject = Assunto
	    eObjMail.isHTML = true
	 	eObjMail.Body = Mensagem	 	
	 	eObjMail.Send
	 	Set eObjMail = nothing

Case "AspQmail"
	    on error resume next
		Set eObjMail = Server.CreateObject("SMTPsvg.Mailer")
		eObjMail.QMessage = 1
		eObjMail.FromName = NomeEmail
		eObjMail.FromAddress = Email
		eObjMail.RemoteHost = Host
		eObjMail.AddRecipient "", ParaEmail
		eObjMail.Subject = Assunto
		eObjMail.BodyText = Mensagem
		objNewMail.SendMail
		Set eObjMail = nothing
		
Case "CDONTS"
	    on error resume next
	 	Set eObjMail = Server.CreateObject("CDONTS.NewMail")
	 	eObjMail.to = ParaEmail
		eObjMail.from = NomeEmail & "<" & Email & ">"
		eObjMail.subject = Assunto
		eObjMail.Importance = 1
		eObjMail.BodyFormat = 0
		eObjMail.MailFormat = 0
		eObjMail.body = Mensagem		
		eObjMail.send
		Set eObjMail = nothing
		
End Select
End Function
%>