<HTML><HEAD><TITLE>M�veis Bianquini</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META http-equiv=Content-Language content=pt-br>
<META 
content="Mabella, Suinocultura, Frigor�fico Mabella, Mabella Carnes, Su�no, Porco, Frigor�fico Mabella - Frederico Westphalen/RS., Frigor�fico Mabella - Itapiranga/SC" 
name=description>
<META content=ALL name=robots>
<META content=Internet name=classification>
<META http-equiv=Content-Language content=pt-br>
<META 
content="porco, suino, frigor�fico, mabella, carnes, mabella carnes, frederico, westphalen, itapiranga, suinocultura" 
name=description>
<META content=ALL name=robots>
<SCRIPT language=JavaScript type=text/javascript>
<!--
function abre_janela(width, height, nome, scrollbar) {
var top; var left;
top = ( (screen.height/2) - (height/2) )
left = ( (screen.width/2) - (width/2) )
window.open('',nome,'width='+width+',height='+height+',scrollbars='+scrollbar+',toolbar=no,location=no,status=no,menubar=no,resizable=no,left='+left+',top='+top);
}
//-->
</SCRIPT>
<LINK href="sim_arquivos/config.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2900.2180" name=GENERATOR>
<style type="text/css">
<!--
.style1 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style2 {font-size: 10px}
.style3 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; }
-->
</style>
 <script language=javascript>
function validar(cadastro) { 

if (document.cadastro.usuario.value=="") {
alert("O Campo Usu�rio n�o est� preenchido!")
cadastro.usuario.focus();
return false
}

if (document.cadastro.senha.value=="") {
alert("O Campo Senha n�o est� preenchido!")
cadastro.senha.focus();
return false
}

if (document.cadastro.codigo.value=="") {
alert("O Campo C�digo n�o est� preenchido!")
cadastro.codigo.focus();
return false
}

if (document.cadastro.nocliente.value=="") {
alert("O Campo Nome do Cliente n�o est� preenchido!")
cadastro.nocliente.focus();
return false
}

if (document.cadastro.nofantasia.value=="") {
alert("O Campo Nome de Fantasia n�o est� preenchido!")
cadastro.nofantasia.focus();
return false
}

if (document.cadastro.endereco.value=="") {
alert("O Campo Endere�o n�o est� preenchido!")
cadastro.endereco.focus();
return false
}

if (document.cadastro.numero.value=="") {
alert("O Campo N�mero n�o est� preenchido!")
cadastro.numero.focus();
return false
}

if (document.cadastro.bairro.value=="") {
alert("O Campo Bairro n�o est� preenchido!")
cadastro.bairro.focus();
return false
}

if (document.cadastro.cidade.value=="") {
alert("O Campo Cidade n�o est� preenchido!")
cadastro.cidade.focus();
return false
}

if (document.cadastro.cep.value=="") {
alert("O Campo CEP n�o est� preenchido!")
cadastro.cep.focus();
return false
}

if (document.cadastro.cnpj.value=="") {
alert("O Campo CPF / CNPJ n�o est� preenchido!")
cadastro.cnpj.focus();
return false
}

if (document.cadastro.inestadual.value=="") {
alert("O Campo Inscri��o Estadual n�o est� preenchido!")
cadastro.inestadual.focus();
return false
}

if (document.cadastro.identidade.value=="") {
alert("O Campo Identidade n�o est� preenchido!")
cadastro.identidade.focus();
return false
}


// Come�a valida��o do e-mail

	if (cadastro.email.value == "") {
		alert("Informe seu e-mail.");
		cadastro.email.focus();
		cadastro.email.select();
		return false;
	} else {
		prim = cadastro.email.value.indexOf("@")
		if(prim < 2) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf("@",prim + 1) != -1) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf(".") < 1) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf(" ") != -1) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf("zipmeil.com") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf("hotmeil.com") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf(".@") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf("@.") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf(".com.br.") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf("/") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf("[") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf("]") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf("(") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf(")") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
		if(cadastro.email.value.indexOf("..") > 0) {
			alert("O e-mail informado parece n�o estar correto.");
			cadastro.email.focus();
			cadastro.email.select();
			return false;
		}
	}
		return true;

}
 
function Mascara (formato, keypress, objeto){
campo = eval (objeto);

// cep
if (formato=='cep'){
separador = '-';
conjunto1 = 5;
if (campo.value.length == conjunto1){
campo.value = campo.value + separador;}
}

// cep cobranca
if (formato=='cepcobranca'){
separador = '-';
conjunto1 = 5;
if (campo.value.length == conjunto1){
campo.value = campo.value + separador;}
}

// Validar CPF
if (formato=='cpf'){
separador1 = '.'; 
separador2 = '-'; 
conjunto1 = 3;
conjunto2 = 7;
conjunto3 = 11;
if (campo.value.length == conjunto1)
  {
  campo.value = campo.value + separador1;
  }
if (campo.value.length == conjunto2)
  {
  campo.value = campo.value + separador1;
  }
if (campo.value.length == conjunto3)
  {
  campo.value = campo.value + separador2;
  }
}
// fim valida��o CPF


// nascimento
if (formato=='nascimento'){
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


// data nascimento
if (formato=='datanasc'){
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
if (formato=='datacadastro'){
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

// telefone
if (formato=='telefone'){
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

// fax
if (formato=='fax'){
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

// celular
if (formato=='celular'){
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
</HEAD>