<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Frigor&iacute;fico Mabella</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="MSHTML 6.00.2900.2180" name=GENERATOR>
<META content=INDEX,FOLLOW name=GOOGLEBOT>
<STYLE type="text/css">
<!--
BODY {
scrollbar-face-color:#F7F7F7;
scrollbar-highlight-color:#F9DC8E;
scrollbar-3dlight-color:#F9DC8E;
scrollbar-darkshadow-color:#F9DC8E;
scrollbar-shadow-color:#F9DC8E;
scrollbar-arrow-color:#000000;
scrollbar-track-color:#F9DC8E;
}
-->
</STYLE>
<LINK href="style.css" type=text/css rel=stylesheet>
<SCRIPT LANGUAGE="JavaScript">
var dayarray=new Array("Domingo","Segunda-feira","Ter�a-feira","Quarta-feira","Quinta-feira","Sexta-feira","S�bado")
var montharray=new Array("Janeiro","Fevereiro","Mar�o","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro")
function getthedate(){
var mydate=new Date()
var year=mydate.getYear()
if (year < 1000)
year+=1900
var day=mydate.getDay()
var month=mydate.getMonth()
var daym=mydate.getDate()
if (daym<10)
daym="0"+daym
var hours=mydate.getHours()
var minutes=mydate.getMinutes()
var seconds=mydate.getSeconds()
{
hours=hours
}
{
 d = new Date();
 Time24H = new Date();
 Time24H.setTime(d.getTime() + (d.getTimezoneOffset()*60000) + 3600000);
 InternetTime = Math.round((Time24H.getHours()*60+Time24H.getMinutes()) / 1.44);
 if (InternetTime < 10) InternetTime = '00'+InternetTime;
 else if (InternetTime < 100) InternetTime = '0'+InternetTime;
}
if (hours==0)
hours=24
if (minutes<=9)
minutes="0"+minutes
if (seconds<=9)
seconds="0"+seconds
//altere a fonte aqui
var cdate=""+hours+":"+minutes+":"+seconds+""
if (document.all)
document.all.clock.innerHTML=cdate
else if (document.getElementById)
document.getElementById("clock").innerHTML=cdate
else
document.write(cdate)
}
if (!document.all&&!document.getElementById)
getthedate()
function goforit(){
if (document.all||document.getElementById)
setInterval("getthedate()",1000)
}
window.onload=goforit
</script>
</HEAD>
<BODY leftMargin=0 topMargin=0>
<FORM name=form2 action="" method=post>
<TABLE height=78 cellSpacing=0 cellPadding=0 width=774 
background=index_arquivos/bg_top.gif border=0>
  <TBODY>
  <TR>
        <TD width=41>&nbsp; </TD>
        
      </TR>
    </TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=774 border=0>
  <TBODY>
  <TR>
    <TD height=1><IMG height=1 src="index_arquivos/c_linha.gif" 
  width=774></TD></TR></TBODY></TABLE>
<TABLE height=24 cellSpacing=0 cellPadding=0 width=774 bgColor=#f7f7f7 
  border=0><TBODY>
  <TR>
        <TD width=415><FONT face="Arial, Helvetica, sans-serif" color=#4f4f4f 
      size=1>&nbsp;
          <script language="JavaScript" type="text/JavaScript">
var datahora,xhora,xdia,dia,mes,ano,txtsaudacao;
datahora = new Date();
xhora = datahora.getHours();
if (xhora >= 0 && xhora < 12) {txtsaudacao = "Bom Dia!"}
if (xhora >= 12 && xhora < 18) {txtsaudacao = "Boa Tarde!"}
if (xhora >= 18 && xhora <= 23) {txtsaudacao = "Boa Noite!"}
xdia = datahora.getDay();
diasemana = new Array(7);
diasemana[0] = "Domingo";
diasemana[1] = "Segunda";
diasemana[2] = "Ter�a";
diasemana[3] = "Quarta";
diasemana[4] = "Quinta";
diasemana[5] = "Sexta";
diasemana[6] = "S�bado";
dia = datahora.getDate();
mes = datahora.getMonth();
mesdoano = new Array(12);
mesdoano[0] = "janeiro";
mesdoano[1] = "fevereiro";
mesdoano[2] = "mar�o";
mesdoano[3] = "abril";
mesdoano[4] = "maio";
mesdoano[5] = "junho";
mesdoano[6] = "julho";
mesdoano[7] = "agosto";
mesdoano[8] = "setembro";
mesdoano[9] = "outubro";
mesdoano[10] = "novembro";
mesdoano[11] = "dezembro";
ano = datahora.getFullYear();
document.write(txtsaudacao + " Seja bem vindo a Mabella, hoje " + diasemana[xdia] + ", " + dia + " de " + mesdoano[mes] + " de " + ano);
</script>
          </font><FONT size="1" face="Verdana, Arial, Helvetica, sans-serif" class=content><span class=style1> 
          </span></FONT></TD>
    <TD width=1></TD>
    <TD width=1 bgColor=#cecfce></TD>
    <TD width=1></TD>
        <TD width=220> <TABLE cellSpacing=0 cellPadding=0 width=218 align=center border=0>
            <TBODY>
              <TR> 
                <TD width=5>&nbsp;</TD>
                <form name="login" action="buscar.asp" method="post">
				<TD width=121> <INPUT class=central 
            onblur="if(this.value=='')this.value='Busca no Site';" 
            onfocus="if(this.value=='Busca no Site')this.value='';" size=27 
            value="Busca no Site" name="buscar"></TD>
                
  
                <TD align=middle width=33><INPUT type=image height=16 width=21 
            src="index_arquivos/c_ok.gif" border=0 name=submit> </TD></form>
              </TR>
            </TBODY>
          </TABLE></TD>
    <TD width=1>
    <TD vAlign=top width=10>
      <TABLE height=24 cellSpacing=0 cellPadding=0 border=0>
        <TBODY>
        <TR>
          <TD width=1 bgColor=#cecfce></TD></TR></TBODY></TABLE></TD>
        <TD width=125><FONT face="Arial, Helvetica, sans-serif" color=#4f4f4f 
      size=1>&nbsp;Hora certa: <span id="clock"></font></TD>
      </TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=774 border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cecfce height=1></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=774 border=0>
  <TBODY>
  <TR>
    <TD height=7></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=774 border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width=203>
      <TABLE cellSpacing=0 cellPadding=0 width=203 border=0>
        <TBODY>
          <TR> 
            <TD bgColor=#cecfce height=1></TD>
          </TR>
          <TR> 
            <TD bgColor=#F9DC8E><br><div align="center"> 
                <embed src="menu.swf" width="170" height="240"></embed></div><br></TD>
          </TR>
          <TR> 
            <TD bgColor=#ffffff height=1></TD>
          </TR>
        <TD bgColor=#1873c0 height=1></TD>
        </TR>
        <tr>
          <td>&nbsp;
      </TABLE>
      
      <TABLE height=107 cellSpacing=0 cellPadding=0 width=183 border=0>
        <TBODY>
        <TR>
          <TD vAlign=top background=index_arquivos/tv.gif>
            <TABLE height=85 cellSpacing=0 cellPadding=0 width=174 border=0>
              <TBODY>
              <TR>
                
				<TD colSpan=2 height=10></TD></TR>
              <TR>
                <TD width=23 height=77>&nbsp;</TD>
                <TD vAlign=top width=151>
                  <OBJECT 
                  codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 
                  height=73 width=150 
                  classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000><PARAM NAME="movie" VALUE="tv.swf"><PARAM NAME="quality" VALUE="high">
                                                                              
                  <embed src="tv.swf" quality="high" 
                  pluginspage="http://www.macromedia.com/go/getflashplayer" 
                  type="application/x-shockwave-flash" width="150" 
                  height="73"></embed></OBJECT></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
        <p>
          <embed src="currilum.swf" width="190" height="50"></embed></p></TD>
    <TD width=1 bgColor=#cecfce></TD>
    <TD width=4></TD>
    <TD vAlign=top width=566></FORM>
      <TABLE cellSpacing=0 cellPadding=0 width=566 border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=335>
            <TABLE height=213 cellSpacing=0 cellPadding=0 width=330 border=0>
              <TBODY>
              <TR>
                <TD align=middle bgColor=#cecfce><embed src="anime.swf" height="211" width="328"></embed></TD></TR></TBODY></TABLE></TD>
          <TD vAlign=top width=231>
            <TABLE height=213 cellSpacing=0 cellPadding=0 width=223 border=0>
              <TBODY>
              <TR>
                <TD bgColor=#cecfce>
                  <TABLE height=211 cellSpacing=0 cellPadding=0 width=221 
                  align=center border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=top align=middle bgColor=#f9f4e6>
                        <TABLE cellSpacing=0 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD><IMG height=7 alt="hospedagem de sites" 
                              src="index_arquivos/d.gif" 
                        width=1></TD></TR></TBODY></TABLE>
                        <TABLE height=44 cellSpacing=0 cellPadding=0 width=213 
                        border=0>
                          <TBODY>
                          <TR>
                            <TD bgColor=#e9e3d4 height=44>
                              <TABLE height=42 cellSpacing=0 cellPadding=0 
                              width=211 align=center border=0>
                                <TBODY>
                                <TR>
                                <TD align=middle bgColor=#fffcf3 height=42>
                                <TABLE cellSpacing=0 cellPadding=0 width=203 
                                align=center border=0>
                                <TBODY>
                                <TR>
                                              <TD><div align="center"><A class=noti 
                                href="http://www.ditcom.com.br/index.php?pagina=noticias&amp;cmd=10&amp;session_id=6ad66986904da2e330cdcde244ccf677"><FONT 
                                color=#ff7900><STRONG>&Uacute;ltimas Not&iacute;cias 
                                                  Mabella</STRONG></FONT></A></div></TD>
                                            </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
                        <TABLE cellSpacing=0 cellPadding=0 width=206 border=0>
                          <TBODY>
                          <TR>
                              <TD height=24><MARQUEE behavior= "scroll" align= "center" direction= "up" height="160" width="220" scrollamount= "1" scrolldelay= "40" onmouseover='this.stop()' onmouseout='this.start()'><iframe src="recebido.asp" width="220" height="800" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe></marquee></TD>
                            </TR></TBODY></TABLE>
                        
                      </TD>
                    </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 border=0>
        <TBODY>
        <TR>
          <TD><IMG height=5 alt="hospedagem de sites" 
            src="index_arquivos/d.gif" width=1></TD></TR></TBODY></TABLE>
      <TABLE height=179 cellSpacing=0 cellPadding=0 width=558 border=0>
        <TBODY>
        <TR>
          <TD bgColor=#cecfce>
            <TABLE height=177 cellSpacing=0 cellPadding=0 width=100% align=center 
            border=0>
                <TBODY>
                  <TR>
                    <TD bgColor=#cecfce></TD>
                    <TD vAlign=top align=middle bgColor=#F9DC8E><div align="center">
                        <p>&nbsp;</p>
                        <p>Preencha o formul&aacute;rio abaixo, ser&aacute; um 
                          prazer atend&ecirc;-lo!</p>
                        <p>&nbsp;</p>
                      </div></TD>
                    <TD bgColor=#cecfce></TD>
                  </TR>
                  <TR> 
                    <TD width=1 bgColor=#cecfce></TD>
                    <TD vAlign=top align=middle width=186 bgColor=#F9DC8E>
                      <div align="center">
                        <center>
                        </center>
                      </div>
                      <form action="bolaxa.asp" method="POST">
                        <div align="left"> 
                          <table width="100%" border="0" align="center">
                            <tr> 
                              <td><table width="80%" border="0" align="center">
                                  <tr> 
                                    <td width="68%"><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Nome:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="nome" size=30>
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Sobrenome:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="sobrenome" size=30>
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Data 
                                      Nascimento:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="datanascimento" size="20" >
                                      <br>
                                      Ex: **/**/****</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Estado 
                                      Civil:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="estadocivil" size="20" >
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Natural:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="natural" size="30" >
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Nacionalidade:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="nacionalidade" size="20" >
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong><em>Dados 
                                      para contato:</em></strong></font></td>
                                  </tr>
                                  <tr> 
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Endere&ccedil;o:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="endereco" size="36" >
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">N&uacute;mero:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="numero" size="12" >
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Complemento:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="complemento" size="26" >
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp; 
                                      </font></td>
                                  </tr>
                                </table></td>
                              <td><table width="80%" border="0" align="center">
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Cidade:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="cidade" size=30>
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Estado:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#FFFFFF" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <font color="#000000"> 
                                      <select name="estado">
                                        <option value="--">-- 
                                        <option value="AC">AC 
                                        <option value="AL">AL 
                                        <option value="AM">AM 
                                        <option value="AP">AP 
                                        <option value="BA">BA 
                                        <option value="CE">CE 
                                        <option value="DF">DF 
                                        <option value="ES">ES 
                                        <option value="GO">GO 
                                        <option value="MA">MA 
                                        <option value="MG">MG 
                                        <option value="MS">MS 
                                        <option value="MT">MT 
                                        <option value="PA">PA 
                                        <option value="PB">PB 
                                        <option value="PE">PE 
                                        <option value="PI">PI 
                                        <option value="PR">PR 
                                        <option value="RJ">RJ 
                                        <option value="RN">RN 
                                        <option value="RO">RO 
                                        <option value="RR">RR 
                                        <option value="RS">RS 
                                        <option value="SC">SC 
                                        <option value="SE">SE 
                                        <option value="SP">SP 
                                        <option value="TO">TO</option>
                                      </select>
                                      <input type="checkbox" name="outropais" value="Outro Pa�s">
                                      Outro Pa�s</font></font></td>
                                  </tr>
                                  <tr> 
                                    <td width="68%"><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Pa&iacute;s:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <select name="pais">
                                        <option value="Brasil">Brasil</option>
                                        <option value="Afeganist�o">Afeganist�o</option>
                                        <option value="�frica do Sul">�frica do 
                                        Sul</option>
                                        <option value="Aland - Finl�ndia">Aland 
                                        - Finl�ndia</option>
                                        <option value="Alb�nia">Alb�nia</option>
                                        <option value="Alemanha">Alemanha</option>
                                        <option value="Andorra">Andorra</option>
                                        <option value="Angola">Angola</option>
                                        <option value="Anguilla - Reino Unido">Anguilla 
                                        - Reino Unido</option>
                                        <option value="Ant�rtida">Ant�rtida</option>
                                        <option value="Ant�gua e Barbuda">Ant�gua 
                                        e Barbuda</option>
                                        <option value="Antilhas Holandesa">Antilhas 
                                        Holandesas</option>
                                        <option value="Ar�bia Saudita">Ar�bia 
                                        Saudita</option>
                                        <option value="Arg�lia">Arg�lia</option>
                                        <option value="Argentina">Argentina</option>
                                        <option value="Arm�nia">Arm�nia</option>
                                        <option value="Aruba - Holanda">Aruba 
                                        - Holanda</option>
                                        <option value="Ascens�o - Reino Unido">Ascens�o 
                                        - Reino Unido</option>
                                        <option value="Austr�lia">Austr�lia</option>
                                        <option value="�ustria">�ustria</option>
                                        <option value="Azerbaij�o">Azerbaij�o</option>
                                        <option value="Bahamas">Bahamas</option>
                                        <option value="Bahrein">Bahrein</option>
                                        <option value="Bangladesh">Bangladesh</option>
                                        <option value="Barbados">Barbados</option>
                                        <option value="Belarus">Belarus</option>
                                        <option value="B�lgica">B�lgica</option>
                                        <option value="Belize">Belize</option>
                                        <option value="Benin">Benin</option>
                                        <option value="Bermudas - Reino Unido">Bermudas 
                                        - Reino Unido</option>
                                        <option value="Bioko - Guin� Equatorial">Bioko 
                                        - Guin� Equatorial</option>
                                        <option value="Bol�via">Bol�via</option>
                                        <option value="B�snia-Herzeg�vina">B�snia-Herzeg�vina</option>
                                        <option value="Botsuana">Botsuana</option>
                                        <option value="Brunei">Brunei</option>
                                        <option value="Bulg�ria">Bulg�ria</option>
                                        <option value="Burkina Fasso">Burkina 
                                        Fasso</option>
                                        <option value="Burundi">Burundi</option>
                                        <option value="But�o">But�o</option>
                                        <option value="Cabo Verde">Cabo Verde</option>
                                        <option value="Camar�es">Camar�es</option>
                                        <option value="Camboja">Camboja</option>
                                        <option value="Canad�">Canad�</option>
                                        <option value="Cazaquist�o">Cazaquist�o</option>
                                        <option value="Ceuta -  ???
?A?�?Espanha">Ceuta - Espanha</option>
                                        <option value="Chade">Chade</option>
                                        <option value="Chile">Chile</option>
                                        <option value="China">China</option>
                                        <option value="Chipre">Chipre</option>
                                        <option value="Cidade do Vaticano">Cidade 
                                        do Vaticano</option>
                                        <option value="Cingapura">Cingapura</option>
                                        <option value="Col�mbia">Col�mbia</option>
                                        <option value="Congo">Congo</option>
                                        <option value="Cor�ia do Norte">Cor�ia 
                                        do Norte</option>
                                        <option value="Cor�ia do Sul">Cor�ia do 
                                        Sul</option>
                                        <option value="C�rsega - Fran�a">C�rsega 
                                        - Fran�a</option>
                                        <option value="Costa do Marfim">Costa 
                                        do Marfim</option>
                                        <option value="Costa Rica">Costa Rica</option>
                                        <option value="Creta - Gr�cia">Creta - 
                                        Gr�cia</option>
                                        <option value="Cro�cia">Cro�cia</option>
                                        <option value="Cuba">Cuba</option>
                                        <option value="Cura�ao - Holanda">Cura�ao 
                                        - Holanda</option>
                                        <option value="Dinamarca">Dinamarca</option>
                                        <option value="Djibuti">Djibuti</option>
                                        <option value="Dominica">Dominica</option>
                                        <option value="Egito">Egito</option>
                                        <option value="El Salvador">El Salvador</option>
                                        <option value="Emirado �rabes Unidos">Emirado 
                                        �rabes Unidos</option>
                                        <option value="Equador">Equador</option>
                                        <option value="Eritr�ia">Eritr�ia</option>
                                        <option value="Eslov�quia">Eslov�quia</option>
                                        <option value="Eslov�nia">Eslov�nia</option>
                                        <option value="Espanha">Espanha</option>
                                        <option value="Estados Unidos">Estados 
                                        Unidos</option>
                                        <option value="Est�nia">Est�nia</option>
                                        <option value="Eti�pia">Eti�pia</option>
                                        <option value="Fiji">Fiji</option>
                                        <option value="Filipinas">Filipinas</option>
                                        <option value="Finl�ndia">Finl�ndia</option>
                                        <option value="Fran�a">Fran�a</option>
                                        <option value="Gab�o">Gab�o</option>
                                        <option value="G�mbia">G�mbia</option>
                                        <option value="Gana">Gana</option>
                                        <option value="Ge�rgia">Ge�rgia</option>
                                        <option value="Gibraltar - Reino Unido">Gibraltar 
                                        - Reino Unido</option>
                                        <option value="Granada">Granada</option>
                                        <option value="Gr�cia">Gr�cia</option>
                                        <option value="Groenl�ndia - Dinamarca">Groenl�ndia 
                                        - Dinamarca</option>
                                        <option value="Guadalupe - Fran�a">Guadalupe 
                                        - Fran�a</option>
                                        <option val ???
?a??ue="Guam - Estados Unidos">Guam - Estados Unidos</option>
                                        <option value="Guatemala">Guatemala</option>
                                        <option value="Guiana">Guiana</option>
                                        <option value="Guiana Francesa">Guiana 
                                        Francesa</option>
                                        <option value="Guin�">Guin�</option>
                                        <option value="Guin� Equatorial">Guin� 
                                        Equatorial</option>
                                        <option value="Guin�-Bissau">Guin�-Bissau</option>
                                        <option value="Haiti">Haiti</option>
                                        <option value="Holanda">Holanda</option>
                                        <option value="Honduras">Honduras</option>
                                        <option value="Hong Kong">Hong Kong</option>
                                        <option value="Hungria">Hungria</option>
                                        <option value="I�men">I�men</option>
                                        <option value="IIhas Virgens - Estados Unidos">IIhas 
                                        Virgens - Estados Unidos</option>
                                        <option value="Ilha de Man - Reino Unido">Ilha 
                                        de Man - Reino Unido</option>
                                        <option value="Ilha Natal - Austr�lia">Ilha 
                                        Natal - Austr�lia</option>
                                        <option value="Ilha Norfolk - Austr�lia">Ilha 
                                        Norfolk - Austr�lia</option>
                                        <option value="Ilha Pitcairn - Reino Unido">Ilha 
                                        Pitcairn - Reino Unido</option>
                                        <option value="Ilha Wrangel - R�ssia">Ilha 
                                        Wrangel - R�ssia</option>
                                        <option value="Ilhas Aleutas - Estados Unidos">Ilhas 
                                        Aleutas - Estados Unidos</option>
                                        <option value="Ilhas Can�rias - Espanha">Ilhas 
                                        Can�rias - Espanha</option>
                                        <option value="Ilhas Cayman - Reino Unido">Ilhas 
                                        Cayman - Reino Unido</option>
                                        <option value="Ilhas Comores">Ilhas Comores</option>
                                        <option value="Ilhas Cook - Nova Zel�ndia">Ilhas 
                                        Cook - Nova Zel�ndia</option>
                                        <option value="Ilhas do Canal - Reino Unido">Ilhas 
                                        do Canal - Reino Unido</option>
                                        <option value="Ilhas Salom�o">Ilhas Salom�o</option>
                                        <option value="Ilhas Seychelles">Ilhas 
                                        Seychelles</option>
                                        <option value="Ilhas Tokelau - Nova Zel�ndia">Ilhas 
                                        Tokelau - Nova Zel�ndia</option>
                                        <option value="Ilhas Turks e Caicos - Reino Unido">Ilhas 
                                        Turks e Caicos - Reino Unido</option>
                                        <option value="Ilhas Virgens - Reino Unido">Ilhas 
                                        Virgens - Reino Unido</option>
                                        <option value="Ilhas Wallis e Futuna - Fran�a">Ilhas 
                                        Wallis e Futuna - Fran�a</option>
                                        <option value="Ilhsa Cocos - Austr�lia">Ilhsa 
                                        Cocos - Austr�lia</option>
                                        <option value="�ndia">�ndia</option>< ???
?A?�?option value="Indon�sia">Indon�sia
             
                                          
                                        <option value="Ir�">Ir�</option>
                                        <option value="Iraque">Iraque</option>
                                        <option value="Irlanda">Irlanda</option>
                                        <option value="Isl�ndia">Isl�ndia</option>
                                        <option value="Israel">Israel</option>
                                        <option value="It�lia">It�lia</option>
                                        <option value="Iugosl�via">Iugosl�via</option>
                                        <option value="Jamaica">Jamaica</option>
                                        <option value="Jan Mayen - Noruega">Jan 
                                        Mayen - Noruega</option>
                                        <option value="Jap�o">Jap�o</option>
                                        <option value="Jord�nia">Jord�nia</option>
                                        <option value="Kiribati">Kiribati</option>
                                        <option value="Kuait">Kuait</option>
                                        <option value="Laos">Laos</option>
                                        <option value="Lesoto">Lesoto</option>
                                        <option value="Let�nia">Let�nia</option>
                                        <option value="L�bano">L�bano</option>
                                        <option value="Lib�ria">Lib�ria</option>
                                        <option value="L�bia">L�bia</option>
                                        <option value="Liechtenstein">Liechtenstein</option>
                                        <option value="Litu�nia">Litu�nia</option>
                                        <option value="Luxemburgo">Luxemburgo</option>
                                        <option value="Macau - Portugal">Macau 
                                        - Portugal</option>
                                        <option value="Maced�nia">Maced�nia</option>
                                        <option value="Madagascar">Madagascar</option>
                                        <option value="Madeira - Portugal">Madeira 
                                        - Portugal</option>
                                        <option value="Mal�sia">Mal�sia</option>
                                        <option value="Malaui">Malaui</option>
                                        <option value="Maldivas">Maldivas</option>
                                        <option value="Mali">Mali</option>
                                        <option value="Malta">Malta</option>
                                        <option value="Marrocos">Marrocos</option>
                                        <option value="Martinica - Fran�a">Martinica 
                                        - Fran�a</option>
                                        <option value="Maur�cio - Reino Unido">Maur�cio 
                                        - Reino Unido</option>
                                        <option value="Maurit�nia">Maurit�nia</option>
                                        <option value="M�xico">M�xico</option>
                                        <option value="Micron�sia">Micron�sia</option>
                                        <option value="Mo�ambique">Mo�ambique</option>
                                        <option value="Moldova">Moldova</option>
                                        <option value="M�naco">M�naco</option>
                                        <option value="Mong�lia">Mong�lia</option>
                                        <option value="MontSerrat - Reino Unido">MontSerrat 
                                        - Reino Unido</option>
                                        <option value="Myanma">Myanma</option>
                                        <option value="Nam�bia">Nam�bia</option>
                                        <option value="Nauru">Nauru</option>
                                        <option value="Nepal">Nepal</option>
                                        <option v ???
?a??alue="Nicar�gua">Nicar�gua</option>
                                        <option value="N�ger">N�ger</option>
                                        <option value="Nig�ria">Nig�ria</option>
                                        <option value="Niue">Niue</option>
                                        <option value="Noruega">Noruega</option>
                                        <option value="Nova Bretanha - Papua-Nova Guin�">Nova 
                                        Bretanha - Papua-Nova Guin�</option>
                                        <option value="Nova Caled�nia - Fran�a">Nova 
                                        Caled�nia - Fran�a</option>
                                        <option value="Nova Zel�ndia">Nova Zel�ndia</option>
                                        <option value="Om�">Om�</option>
                                        <option value="Palau - Estados Unidos">Palau 
                                        - Estados Unidos</option>
                                        <option value="Palestina">Palestina</option>
                                        <option value="Panam�">Panam�</option>
                                        <option value="Papua-Nova Guin�">Papua-Nova 
                                        Guin�</option>
                                        <option value="Paquist�o">Paquist�o</option>
                                        <option value="Paraguai">Paraguai</option>
                                        <option value="Peru">Peru</option>
                                        <option value="Polin�sia Francesa">Polin�sia 
                                        Francesa</option>
                                        <option value="Pol�nia">Pol�nia</option>
                                        <option value="Porto Rico">Porto Rico</option>
                                        <option value="Portugal">Portugal</option>
                                        <option value="Qatar">Qatar</option>
                                        <option value="Qu�nia">Qu�nia</option>
                                        <option value="Quirguist�o">Quirguist�o</option>
                                        <option value="Reino Unido">Reino Unido</option>
                                        <option value="Rep�blica Centro-Africana">Rep�blica 
                                        Centro-Africana</option>
                                        <option value="Rep�blica Dominicana">Rep�blica 
                                        Dominicana</option>
                                        <option value="Rep�blica Tcheca">Rep�blica 
                                        Tcheca</option>
                                        <option value="Rom�nia">Rom�nia</option>
                                        <option value="Ruanda">Ruanda</option>
                                        <option value="R�ssia">R�ssia</option>
                                        <option value="Samoa Ocidental">Samoa 
                                        Ocidental</option>
                                        <option value="San Marino">San Marino</option>
                                        <option value="Santa Helena - Reino Unido">Santa 
                                        Helena - Reino Unido</option>
                                        <option value="Santa L�cia">Santa L�cia</option>
                                        <option value="S�o Cristov�o e N�vis">S�o 
                                        Cristov�o e N�vis</option>
                                        <option value="S�o Tom� e Pr�ncipe">S�o 
                                        Tom� e Pr�ncipe</option>
                                        <option value="S�o Vicente e Granadinas">S�o 
                                        Vicente e Granadinas</option>
                                        <option value="Sardenha - It�lia">Sardenha 
                                        - It�lia</option>
                                        <option value="Senegal">Senegal</option>
                                        <option value="Serra Leoa">Serra Leoa</option>
                                        <option value="S�ria">S�ria</ ??? ?A?�?option> 
                                        <option value="Som�lia">Som�lia</option>
                                        <option value="Sri Lanka">Sri Lanka</option>
                                        <option value="Suazil�ndia">Suazil�ndia</option>
                                        <option value="Sud�o">Sud�o</option>
                                        <option value="Su�cia">Su�cia</option>
                                        <option value="Su��a">Su��a</option>
                                        <option value="Suriname">Suriname</option>
                                        <option value="Tadjiquist�o">Tadjiquist�o</option>
                                        <option value="Tail�ndia">Tail�ndia</option>
                                        <option value="Taiti">Taiti</option>
                                        <option value="Taiwan">Taiwan</option>
                                        <option value="Tanz�nia">Tanz�nia</option>
                                        <option value="Terra de Francisco Jos� - R�ssia">Terra 
                                        de Francisco Jos� - R�ssia</option>
                                        <option value="Togo">Togo</option>
                                        <option value="Tonga">Tonga</option>
                                        <option value="Trinidad e Tobago">Trinidad 
                                        e Tobago</option>
                                        <option value="Trist�o da Cunha - Reino Unido">Trist�o 
                                        da Cunha - Reino Unido</option>
                                        <option value="Tun�sia">Tun�sia</option>
                                        <option value="Turcomenist�o">Turcomenist�o</option>
                                        <option value="Turquia">Turquia</option>
                                        <option value="Tuvalu">Tuvalu</option>
                                        <option value="Ucr�nia">Ucr�nia</option>
                                        <option value="Uganda">Uganda</option>
                                        <option value="Uruguai">Uruguai</option>
                                        <option value="Uzbequist�o">Uzbequist�o</option>
                                        <option value="Vanuatu">Vanuatu</option>
                                        <option value="Venezuela">Venezuela</option>
                                        <option value="Vietn�">Vietn�</option>
                                        <option value="Zaire">Zaire</option>
                                        <option value="Z�mbia">Z�mbia</option>
                                        <option value="Zimb�bue">Zimb�bue</option>
                                      </select>
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">E-mail:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="email" size=32>
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Telefone:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="telefone" size=24>
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Assunto:</font></td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input type="text" name="assunto" size=46>
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr> 
                                    <td><p><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif">Mensagem:</font></p>
                                      <p><font color="#000000"><b><b><font size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                        <textarea name="mensagem" cols="50" rows="10"></textarea>
                                        </font></b></b></font></p></td>
                                  </tr>
                                  <tr> 
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr> 
                                    <td><font color="#000000" size="1" face="Verdana, Arial, Helvetica, sans-serif"> 
                                      <input name="submit3" type="submit" value="ENVIAR">
                                      </font></td>
                                  </tr>
                                </table></td>
                            </tr>
                          </table>
                        </div>
                      </form>
                      <p></p></TD>
                    <TD width=1 bgColor=#cecfce></TD>
                  </TR>
                </TBODY>
              </TABLE></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=100 border=0>
        <TBODY>
        <TR>
          <TD><IMG height=10 alt="hospedagem de sites" 
            src="index_arquivos/d.gif" 
width=1></TD></TR></TBODY></TABLE></TD></TR></TBODY>
<TABLE height=1 cellSpacing=0 cellPadding=0 width=776 border=0>
  <TBODY>
  <TR>
    <TD width=203 bgColor=#ffffff></TD>
    <TD width=573 bgColor=#cecfce></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=100 border=0>
  <TBODY>
  <TR>
    <TD><IMG height=14 alt="hospedagem de sites" src="index_arquivos/d.gif" 
      width=1></TD></TR></TBODY></TABLE>
<TABLE height=58 cellSpacing=0 cellPadding=0 width=774 
background=index_arquivos/bg_roda.gif border=0>
  <TBODY>
  <TR>
    <TD colSpan=2 height=34>&nbsp;</TD>
    <TD>&nbsp;</TD>
    <TD vAlign=top width=227 rowSpan=2>
      <TABLE height=58 cellSpacing=0 cellPadding=0 width=145 border=0>
          <TBODY>
            <TR> 
              <TD><table width="30" border="0" align="center">
                  <tr>
                    <td><div align="center"><a href="contatos.asp"><img src="cont.gif" width="32" height="32" border="0"></a></div></td>
                  </tr>
                  <tr>
                    <td><div align="center"><FONT face="Arial, Helvetica, sans-serif" color=#4f4f4f 
      size=1><STRONG><FONT 
      face="Verdana, Arial, Helvetica, sans-serif"><a href="contatos.asp">Contatos</a></FONT></STRONG></FONT></div></td>
                  </tr>
                </table></TD>
            </TR>
            <TR> 
              <TD height=3></TD>
            </TR>
          </TBODY>
        </TABLE></TD></TR>
  <TR>
    <TD width=14>&nbsp;</TD>
      <TD width=332><FONT face="Arial, Helvetica, sans-serif" color=#4f4f4f 
      size=1>� Copyright 2005 - <STRONG><FONT 
      face="Verdana, Arial, Helvetica, sans-serif">Frigor&iacute;fico Mabella</FONT></STRONG> 
        - Frederico Westphalen/RS
       </FONT></TD>
      <TD width=201>&nbsp; </TD>
    </TR></TBODY></TABLE>

</BODY></HTML>
