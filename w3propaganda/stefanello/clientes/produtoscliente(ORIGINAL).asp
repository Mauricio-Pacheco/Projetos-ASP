<%
Response.Redirect("http://www.moveisbianquini.com.br/cadastro/loja/default.asp")
%>
<!--#include file="verificacliente.asp"-->
<!--#include file="conexao.asp"-->
<!--#include file="meta.asp"-->
<% 

Dim rs
Dim rs2
Dim rs3
Dim SQL
Dim Conexao
Dim BancoDados
Dim aham
Dim record
Dim limpa
Dim limpa2
Dim limpado
Dim limpado2

aham = date

limpa = Cstr(Session("usuario"))

Set rs8 = Server.CreateObject("ADODB.Recordset") 
SQL8 = "SELECT usuario FROM representantes WHERE usuario =' " & limpa & " '"
rs8.Open SQL8, wm,3,3

if not rs8.EOF then
limpa2 = rs8("usuario")
else
limpa2 = Cstr(Session("usuario"))
end if 

Set rs = Server.CreateObject("ADODB.Recordset") 
SQL = "SELECT * FROM clientes WHERE representante ='" & limpa2 & "' "
rs.Open SQL, wm,3,3
      

%>
<div align="center"><img src="logore.jpg" width="550" height="150" /></div>
  <TABLE width="680" border=0 align="center" cellPadding=0 
cellSpacing=0 bgColor=#ffffff class=texto style="BORDER-RIGHT: gainsboro 1px solid" style="BORDER-LEFT: gainsboro 1px solid"></HTML>
  <TBODY>
  <TR>
    <TD bgColor=#005DA2 colSpan=3 height=25><TABLE class=texto cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR vAlign=center>
          <TD width="98%" bgcolor="#005DA2"><FONT color=#ffffff><span class="style2">&nbsp;&nbsp;Cadastro de Representantes - <script language="JavaScript">

<!--
day = new Date()
num_dia = day.getDate()
dia = day.getDay()+1
mes = day.getMonth()+1
ano = day.getYear()


if(dia ==1)
document.write("Domingo, ")
if(dia ==2)
document.write("Segunda feira, ")
if(dia ==3)
document.write("Ter�a feira, ")
if(dia ==4)
document.write("Quarta feira, ")
if(dia ==5)
document.write("Quinta feira, ")
if(dia ==6)
document.write("Sexta feira, ")
if(dia ==7)
document.write("Saturday , ")

document.write(num_dia," de ")

if(mes ==1)
document.write("Janeiro de")
if(mes ==2)
document.write("Fevereiro de")
if(mes ==3)
document.write("Mar�o de")
if(mes ==4)
document.write("Abril de")
if(mes ==5)
document.write("Maio de")
if(mes ==6)
document.write("Junho de")
if(mes ==7)
document.write("Julho de")
if(mes ==8)
document.write("Agosto de")
if(mes ==9)
document.write("Setembro de")
if(mes ==10)
document.write("Outubro de")
if(mes ==11)
document.write("Novembro de")
if(mes ==12)
document.write("Dezembro de")

document.write(" ",ano)


//--->
</script>
- 
Seja bem vindo <%=Session("usuario")%> - <a class=home_titulo7000 href="sair.asp">Sair do Sistema</a></span></FONT></TD>
        </TD></TR></TBODY></TABLE></TD>
  <TR>
  <TR>
    <TD vAlign=top>
      <TABLE class=texto cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
         <!--#include file="menucliente.asp"--><TD vAlign=top>
            <TABLE class=texto cellSpacing=0 cellPadding=0 width="100%" 
border=0>
              <TBODY>
              <TR>
                <TD vAlign=top>
                  <TABLE class=texto cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=top width="1%"><TABLE class=texto cellSpacing=0 cellPadding=4 
                        width="100%" border=0>
                          <TBODY>
                          <TR>
                            <TD align=middle><div align="left"><span style="font-size: 12px">Lista de  Produtos e Clientes</span></div></TD>
                          </TR></TBODY></TABLE> <script language=javascript>
								   function validar(cadastro) { 
								   
								   if (document.cadastro.expedicao.value=="") {
alert("O Campo Data de Expedi��o n�o est� preenchido!")
cadastro.expedicao.focus();
return false
}

if (document.cadastro.entrega.value=="") {
alert("O Campo Data de Entrega n�o est� preenchido!")
cadastro.entrega.focus();
return false
}

}
								   
								   
								   function Mascara (formato, keypress, objeto){
campo = eval (objeto);

// data nascimento
if (formato=='expedicao'){
separador = '/'; 
conjunto1 = 2;
conjunto2 = 5;
if (campo.value.length == conjunto1)
  {
  campo.value = campo.value + separador;
  }
if (campo.value.length == conjunto2)
  {
  campo.value = campo.value + separador;
  }
}



// data cadastro
if (formato=='entrega'){
separador = '/'; 
conjunto1 = 2;
conjunto2 = 5;
if (campo.value.length == conjunto1)
  {
  campo.value = campo.value + separador;
  }
if (campo.value.length == conjunto2)
  {
  campo.value = campo.value + separador;
  }
}



// celular
if (formato=='celular32'){
separador1 = '(';
separador2 = ') ';
separador3 = '-';
conjunto1 = 0;
conjunto2 = 3;
conjunto3 = 9;
if (campo.value.length == conjunto1){
campo.value = campo.value + separador1;
}
if (campo.value.length == conjunto2){
campo.value = campo.value + separador2;
}
if (campo.value.length == conjunto3){
campo.value = campo.value + separador3;
}
}

}

</SCRIPT>
                        <form method="POST" name="cadastro" action="repedido.asp" onSubmit="return validar(this)"><TABLE class=texto cellSpacing=5 cellPadding=0 
                        width="100%" align=center border=0>
                          <TBODY>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px"><span class="style2" style="font-size: 12px">Representante Respons&aacute;vel:</span></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px"><font 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color="#000000" size="1">
                              <% 

limpado = Cstr(Session("usuario"))

Set rs2 = Server.CreateObject("ADODB.Recordset") 
SQL2 = "SELECT * FROM representantes"
rs2.Open SQL2, wm,3,3

if not rs2.EOF then
limpado2 = rs2("usuario")
else
limpado2 = Cstr(Session("usuario"))
end if 

Set rs10 = Server.CreateObject("ADODB.Recordset") 
SQL10 = "SELECT * FROM representantes WHERE usuario ='" & limpado2 & "' "
rs10.Open SQL10, wm,3,3


%> <%
							Do While NOT rs10.EOF %><input class="texto" size="40" name="rresp" value="<%=rs10("nocliente")%>" readonly="true" /><% 
	  rs10.MoveNext
      Loop
	  					 %>
                            </font></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px">Selecione o Cliente:</TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px"><span class="style2" style="font-size: 12px"><font 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color="#ffffff" size="1"><font 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color="#ffffff" size="1"><font color="#000000">
                              <select class="texto" 
                              name="clientetotal">
                                <%
							Do While NOT rs.EOF %><option value="<%=rs("cod")%> - <%=rs("cliente")%> - <%=rs("razaosocial")%> - <%=rs("nomefantasia")%><br><br>Endere�o: <%=rs("endereco")%> - Bairro: <%=rs("bairro")%> - Complemento: <%=rs("complend")%><br><br>Cidade: <%=rs("cidade")%> - Estado: <%=rs("estado")%> - CEP: <%=rs("cep")%><br><br>Telefone: <%=rs("telefone")%> - FAX: <%=rs("fax")%> - Insc. Est.: <%=rs("ie")%> - CNPJ/CPF: <%=rs("cnpjcpf")%>"><%=rs("cod")%> - <%=rs("cliente")%> - <%=rs("razaosocial")%> - <%=rs("nomefantasia")%></option><% 
	  rs.MoveNext
      Loop
	  					 %>
                              </select>
                            </font></font></font></span></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px"><span class="style2" style="font-size: 12px"><span class="style2" style="font-size: 10px; color: #000000">Formas de Pagamento:</span></font><font 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color="#ffffff" size="1"><font 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color="#ffffff" size="1"><font color="#000000">
                              <select class="texto" 
                              name="clientetotal2">
                                <option value="formas">� vista</option>
                                <option value="formas">Cart�o de Cr�dito</option>
                                <option value="formas">Credi�rio</option>
                                <option value="formas">Boleto Banc�rio</option>
                                <option value="formas">30 Dias</option>
                                <option value="formas">60 Dias</option>
                                <option value="formas">90 Dias</option>
                              </select>
                            </font></font></font></span></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px"><span class="style2" style="font-size: 10px; color: #000000">Data de Expedi&ccedil;&atilde;o:</span></font>
                                  
								   <input class="texto" size="18" name="expedicao" id="expedicao" value="" onKeyPress="Mascara('expedicao', window.event.keyCode, 'document.cadastro.expedicao');"  maxlength="10" />
                                  <span class="style2" style="font-size: 10px; color: #000000">Data de Entrega</span></font><font 
                              face="Verdana, Arial, Helvetica, sans-serif" size="1"><span style="font-size: 10px">:</span>
                                  <input class="texto" size="18" name="entrega" value="" id="entrega" onKeyPress="Mascara('entrega', window.event.keyCode, 'document.cadastro.entrega');"  maxlength="10" />
                                  </font></span></font>                                  </span></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top class="style2" style="font-size: 12px">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD width="60%" vAlign=top class="style2" style="font-size: 12px"><font 
                              face="Verdana, Arial, Helvetica, sans-serif" 
                              color="#000000" size="1">
                              <input class="texto" type="submit" value="Realizar Pedido" name="submit2"/>
                            </font></TD>
                          </TR>
                          </TBODY></TABLE>
                        </form></TD>
                    </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
   </TBODY></TABLE><table width="680" border="0" align="center"><TR>
    <TD style="BORDER-TOP: #005DA2 10px solid" bgColor=#FFFFFF colSpan=3 
    height="1%"><!--#include file="baixo.asp"--></TD>
  </TR>
  </TBODY></TABLE>
</BODY></HTML>
