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



'CONFIGURA��ES GERAIS DA SUA LOJA
'Altere todos os dados que desejar 
'====================================================


'###################################################################################
'## SELECIONE SEU BANCO DE DADOS E SEU TIPO DE CONEX�O (Access, SQLServer ou MySQL)
'###################################################################################

'## Para selecionar a op��o basta retirar o coment�rio que � representado por " ' " nas partes "'StringdeConexao" e "VersaoDb" e preencher com os dados corretos

'*********************************
'## Use 1 para MySql; 2 para Access e 3 para SQL Server
VersaoDb = 2

'## Se voc� usa Access escolha a vers�o e preencha abaixo 
'------> MySQL usando o MyODBC
'StringdeConexao = "driver=MySQL;server=localhost;uid=root;pwd=;database=micronext"
'*********************************

'## Se voc� usa Access escolha a vers�o e preencha abaixo 
'------> MS Access 2000 usando uma pasta virtual
StringdeConexao = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("database/diego.mdb") 

'------> MS Access 2000 no Brinkster
'StringdeConexao = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("/nome_de_usuario/db/virtuastore.mdb") 

'------> MS Access 2000
'StringdeConexao = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=c:\inetpub\wwwroot\virtuastore\database\virtuastore.mdb" 

'------> MS Access 97 usando uma pasta virtual
'StringdeConexao = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("database/virtuastore97.mdb") 

'------> MS Access 97 no Brinkster
'StringdeConexao = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("/nome_de_usuario/db/virtuastore97.mdb") 

'------> MS Access 97
'StringdeConexao = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=c:\inetpub\wwwroot\virtuastore\database\virtuastore97.mdb" 
'*********************************


'*********************************
'## Se voc� usa SQLServer escolha a vers�o e preencha abaixo 
'------> MS SQL Server 6.x/7.x/2000 (Conex�o OLEDB)
'StringdeConexao = "Provider=SQLOLEDB;Data Source=servidor;database=virtuastore;uid=sa;pwd=;"

'------> MS SQL Server 6.x/7.x/2000 (Conex�o ODBC) 
'StringdeConexao = "Provider=MSDASQL.1;Persist Security Info=False;Data Source=VirtuaStore;Initial Catalog=virtuastore" 
'*************************************

'*********************************
'## Se voc� usa DSN preencha abaixo:
'StringdeConexao = "NOME_DA_DSN_NAME"
'*************************************

'###################################################################################


'###################################################################################
'## ESCREVA A MOEDA QUE VAI SER UTILIZADA EM SUA LOJA
'###################################################################################

strLgMoeda = "R$"  ' REAL - R$ - Brasil
strLgMoedax = "Reais"  ' Nome da moeda no plural
'###################################################################################


'###################################################################################
'## INFORME O DIRETORIO DOS ARQUIVOS DE LINGUAGEM DA LOJA
'###################################################################################

'diretorio padr�o a partir do wwwroot onde se encontra sua loja
dirlingua = "linguagens/portuguesbr"
%><!--#include file="linguagens/portuguesbr/linguagem.asp"--><%
'###################################################################################


'###################################################################################
'## CONFIGURA��O DE FRETE
'###################################################################################

'ATEN��O: Leia o arquivo Leia-me.txt para saber como configurar 
'o frete da loja no banco de dados e depois siga as instru��es abaixo:

'----> Escreva o numero da coluna em que o estado est� seguindo a ordem da sua tabela de fretes (tabela padr�o dos correios)
'----> de acordo com os seguintes crit�rios:
'----> **: A coluna do seu estado � igual a 0 e as outras s�o 1,2 e assim respectivamente

'## o padr�o aqui est� configurado para a tabela do Rio Grande do Sul

estado_ac = 7
estado_al = 7
estado_ap = 9
estado_am = 9
estado_ba = 6
estado_ce = 9
estado_df = 4
estado_es = 4
estado_go = 5
estado_ma = 9
estado_mt = 5
estado_ms = 3
estado_mg = 4
estado_pa = 9
estado_pb = 8
estado_pr = 1
estado_pe = 8
estado_pi = 8
estado_rj = 3
estado_rn = 9
estado_rs = 0
estado_ro = 7
estado_rr = 9
estado_sc = 1
estado_sp = 2
estado_se = 7
estado_to = 6
'###################################################################################



'###################################################################################
'## CONFIGURA��ES GERAIS
'###################################################################################

'## Escreva o nome do administrador da loja para suporte via Administrador
Seu_nome = "angratel"

'## Senha principal da loja
senhamaster = "angra123"
	
'## Dados da loja	
Nome_da_sua_loja = " Angratel"
CNPJ_da_sua_empresa = "04.901.558/0001-07"
Razao_Social = "Angratel"
Email_da_sua_loja = "mandry@casadaweb.net"
Slogan_da_sua_loja = ""
Endereco_do_site = "www.casadaweb.net"          'ATEN��O: Escreva o endere�o virtual da sua loja sem o Http://
Endereco_da_sua_loja = "Rua Mauricio Cardoso, 85 - Sala 02"
Bairro_da_sua_loja = "Centro"
Cidade_da_sua_loja = "Frederico Westphalen"
Estado_da_sua_loja = "RS"
Pais_da_sua_loja = "Brasil"
Telefone_da_sua_loja = "(0xx55) 3744-1238"
	
'## Dados bancarios
Seu_banco = "Banco do Brasil"
Sua_agencia = "111111"
Sua_conta_corrente = "0000000-9"
Nome_do_cedente = "Ot�vio Dias"


'########## DADOS PARA CONFIGURA��O DO BOLETO BANC�RIO ##########

caminho_boleto = "boleto_caixa.asp" ' use este caminho para utilizar o boleto da Caixa Econ�mica Federal
'caminho_boleto = "boleto_itau.asp" ' use este caminho para utilizar o boleto do banco Ita�
'caminho_boleto = "boleto_bradesco.asp" ' use este caminho para utilizar o boleto do Bradesco

bol_banco = "104" 'c�digo do banco
bol_dvbanco = "0" 'Digito verificador do banco
bol_agencia = "1584" 'agencia
bol_conta = "00100002993" 'conta
bol_dvconta = "6" 'digito verificador da conta
bol_carteira = "80" 'c�digo da carteira
bol_letracarteira = "SR" 'sigla da carteira
bol_moeda = "9" 'tamanho da moeda
bol_especie = "R$" 'cifra da moeda
bol_codigocedente = "15847000000172" 'c�digo do cedente
bol_cedente = "Casa da Web" 'nome do cedente
bol_dadoscedente = "Casa da Web<br>Rua do Com�rcio, 577 CEP: 98400-000 <br>Fone: 55 3744-7545 <br>E-Mail: financeiro@casadaweb.net <br>Site: www.casadaweb.net <br>" 'dados do cedente

'##################################################################


'## Confirura��es de e-mail
Host_da_loja = "mail.casadaweb.net" ' --> Se o componente usado for CDONTS deixe esse campo assim: "-"

'## Escolha o componente e desmarque o coment�rio
Componente_usado = "AspEmail"
'Componente_usado = "AspMail"
'Componente_usado = "AspQmail"
'Componente_usado = "CDONTS"


'## Config da Administra��o(administrador.asp)
Seu_Usuario_no_Administrador = "angratel"
Sua_Senha_no_Administrador = "angra123"
	
'## Fonte da loja
Fontes_da_loja = "tahoma,verdana,arial,helvetica"
	
'## Valor da m�o proria para entrega do SEDEX
Preco_da_mao_propria = 2.20     ' ex. 2.20
	
'## Dias para entrega dos pedidos
Dias_para_entrega = 10    'Dez dias
	
	
'CORES DA SUA LOJA
'Altere todos os dados que desejar 
'====================================================
'Cor do fundo na resolu��o 1024x768
Cor_de_fundo = "#eeeeee"

'Cor das linhas
Cor_das_linhas = "#cccccc"

'Cor da barra de menu e copyright
Cor_do_menu = "#305441"

'Cor principal da loja
Cor_principal = "#305441"

'Cor principal dos links
Cor_dos_links ="#000000"

'Cor secundaria dos links
Cor_dos_links_secundarios ="#1F70E9"

'Cor do texto dos menus
Texto_dos_menus = "#305441"

'Cor do texto da loja
Texto_da_loja = "#000000"

'Cor da borda do carrinho de compras
Cor_da_borda_carrinho_de_compras = "#E02323"
'====================================================


'####################################################################
'# NAO ALTERE ESSA PARTE, VOC� PODER� ESTRAGAR SUA LOJA
'####################################################################

    'Inicia as variaveis da Aplica��o 
	application("senhamaster") = senhamaster
 	application("razaoloja") = Razao_Social
    application("nomeloja") = Nome_da_sua_loja
    application("emailloja") = Email_da_sua_loja
   	application("slogan") = Slogan_da_sua_loja
   	application("urlloja") = Endereco_do_site
   	application("endereco11") = Endereco_da_sua_loja
   	application("bairro11") = Bairro_da_sua_loja
   	application("cidade11") = Cidade_da_sua_loja
   	application("estado11") = Estado_da_sua_loja
   	application("pais11") = Pais_da_sua_loja
   	application("fone11") = Telefone_da_sua_loja
   	application("bancopag") = Seu_banco
   	application("contapag") = Sua_conta_corrente
   	application("pagpara") = Nome_do_cedente
	application("agpag") = Sua_agencia
	application("fonte") = Fontes_da_loja
	application("maopropria") = Preco_da_mao_propria
	application("diasentrega") = Dias_para_entrega
	application("corfundo") = Cor_de_fundo
	application("cor1") = Cor_das_linhas
	application("cor2") = Cor_do_menu
	application("cor3") = Cor_principal
	application("cor4") = Cor_dos_links
	application("cor5") = Cor_dos_links_secundarios
	application("fontebranca") = Texto_dos_menus
	application("fontepreta") = Texto_da_loja
	application("corborda") = Cor_da_borda_carrinho_de_compras
    application("nomecontato") = Seu_nome
	admin = Seu_Usuario_no_Administrador
    nsenha = Sua_Senha_no_Administrador	
	application("HostLoja") = Host_da_loja
    application("ComponenteLoja") = Componente_usado	
	

'>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<

    Server.ScriptTimeOut = 999
	application("vsversao") = "1.2.1"
	application("ultimaatualizacao")  = "Domingo, 12 de Mar�o de 2003 �s 15:05:11"
	set abredb = Server.CreateObject("ADODB.Connection")
	abredb.Open(StringdeConexao)

'>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<
	
'Executa a fun��o GLOBAL

set rsglobal = abredb.execute("SELECT * FROM compras Order by idcompra desc")
if rsglobal.eof then
Session("orderID") = ""
end if
rsglobal.close
set rsglobal = nothing

if Session("orderID") = "" then
set rs = abredb.execute("SELECT * FROM compras Order by idcompra desc")
if rs.eof then
Session("orderID") = 1
abredb.Execute("INSERT INTO compras (idcompra, datacompra, status) values ('" &session("orderID") & "', '" & date & "', 'Compra em Aberto')")
else
Session("orderID") = rs("idcompra") + 1
abredb.Execute("INSERT INTO compras (idcompra, datacompra, status) values (" &session("orderID") & ", '" & date & "','Compra em Aberto')")
end if
session.timeout = 999
else
end if

'####################################################################
%>

