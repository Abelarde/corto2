						/*codigo del usuario*/
package corto2;
import java_cup.runtime.*;  //REVISAR ESTO

%%
%state A
%cupsym sym1
%cup
%public
%unicode
%ignorecase

%class AnalizadorLexico
%line
%char
%column

//REVISAR TODO ESTOS
//Espacio=[ \t|\r|" "|\n|\f]  //REVISAR SI NO FALTA \n " "|
//CharEsp = ("@"|"#"|"$"|"%"|"^"|"&"|"."|":"|"\\")
//id = {Letras}({Letras}|{Enteros}|"_")*
//Booleanos = "True" | "False"

//espacio=[ ,\t,\r]+
Letras = [a-zA-Z_]
Enteros = [0-9]
Espacio=[" "| \t\r\n\f] 
CharEsp = ("@"|"#"|"$"|"%"|"^"|"&"|"."|":"|"\\")
id = {Letras}({Letras}|{Enteros}|"_")*
Combinado = ([a-zA-Z_]([a-zA-Z_]|[0-9])([a-zA-Z_]|[0-9])([a-zA-Z_]|[0-9])([a-zA-Z_]|[0-9])+[a-zA-Z_])

%%

"request" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_request , yycolumn, yyline+1,  yytext());}
"reply" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_reply , yycolumn, yyline+1,  yytext());}
"InicioUsuario" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_InicioUsuario , yycolumn, yyline+1,  yytext());}
"CrearUsuario" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_CrearUsuario , yycolumn, yyline+1,  yytext());}
"id" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_id , yycolumn, yyline+1,  yytext());}
"password" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_password , yycolumn, yyline+1,  yytext());}
"nombre" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_nombre , yycolumn, yyline+1,  yytext());}
"apellido" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_apellido , yycolumn, yyline+1,  yytext());}
"telefono" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_telefono , yycolumn, yyline+1,  yytext());}
"email" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_email , yycolumn, yyline+1,  yytext());}
"direccion" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_direccion , yycolumn, yyline+1,  yytext());}
"Usuario" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_Usuario , yycolumn, yyline+1,  yytext());}
"access" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_access , yycolumn, yyline+1,  yytext());}
"registro" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_registro , yycolumn, yyline+1,  yytext());}


"tipo" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_tipo , yycolumn, yyline+1,  yytext());}
"\"" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.comilla , yycolumn, yyline+1,  yytext());}
"tienda" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_tienda , yycolumn, yyline+1,  yytext());}
"codigo" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_codigo , yycolumn, yyline+1,  yytext());}
"propietario" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_propietario , yycolumn, yyline+1,  yytext());}
"img" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_img , yycolumn, yyline+1,  yytext());}
"crear" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_crear , yycolumn, yyline+1,  yytext());}
"modificacion" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_modificacion , yycolumn, yyline+1,  yytext());}
"eliminar" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_eliminar , yycolumn, yyline+1,  yytext());}
"modificar" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_modificar , yycolumn, yyline+1,  yytext());}
"producto" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_producto , yycolumn, yyline+1,  yytext());}
"cantidad" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_cantidad , yycolumn, yyline+1,  yytext());}
"marca" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_marca , yycolumn, yyline+1,  yytext());}
"color" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_color , yycolumn, yyline+1,  yytext());}
"tamano" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_tamano , yycolumn, yyline+1,  yytext());}
"sucursal" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_sucursal , yycolumn, yyline+1,  yytext());}


"Rq" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_Rq , yycolumn, yyline+1,  yytext());}
"Ptn" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_Ptn , yycolumn, yyline+1,  yytext());}
"query" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_query , yycolumn, yyline+1,  yytext());}
"Extraer de" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_Extraer_de , yycolumn, yyline+1,  yytext());}
"donde" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_donde , yycolumn, yyline+1,  yytext());}
"Tienda" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_Tienda , yycolumn, yyline+1,  yytext());}
"Producto" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_Producto , yycolumn, yyline+1,  yytext());}
"Vacio" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_Vacio , yycolumn, yyline+1,  yytext());}
"error" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_error , yycolumn, yyline+1,  yytext());}
"descripcion" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_descripcion , yycolumn, yyline+1,  yytext());}
"get" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_get , yycolumn, yyline+1,  yytext());}
"lista" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.re_lista , yycolumn, yyline+1,  yytext());}


"##" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_or , yycolumn, yyline+1,  yytext());}
"%%" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_and , yycolumn, yyline+1,  yytext());}
"N" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_N , yycolumn, yyline+1,  yytext());}
";" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_puntoycoma , yycolumn, yyline+1,  yytext());}
"(" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_abre_parentesis , yycolumn, yyline+1,  yytext());}
")" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_cierra_parentesis , yycolumn, yyline+1,  yytext());}
"{" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_abre_llave , yycolumn, yyline+1,  yytext());}
"}" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_cierra_llave , yycolumn, yyline+1,  yytext());}
"-" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_guion , yycolumn, yyline+1,  yytext());}
"+" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_mas , yycolumn, yyline+1,  yytext());}
"*" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_por , yycolumn, yyline+1,  yytext());}
"/" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_div , yycolumn, yyline+1,  yytext());}
"$" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_dolar , yycolumn, yyline+1,  yytext());}
//":" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_dospuntos , yycolumn, yyline+1,  yytext());}
"=" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_igual, yycolumn, yyline+1,  yytext());}
"," { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_coma, yycolumn, yyline+1,  yytext());}
"==" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_igualigual, yycolumn, yyline+1,  yytext());}
"True" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_True, yycolumn, yyline+1,  yytext());}
"False" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_False, yycolumn, yyline+1,  yytext());}
"Fail" { System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.sig_Fail , yycolumn, yyline+1,  yytext());}



{id}		{System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.id, yycolumn, yyline+1,  yytext());}
{Enteros}+	{System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.enteros, yycolumn, yyline+1,  yytext());}
"\""({Enteros}|{Letras}|{CharEsp}|" "|{Espacio})*"\""	{System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.cadena, yycolumn, yyline+1, yytext());}


{Combinado}	{System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.password, yycolumn, yyline+1,  yytext());}
{id}("@compiladores1.com")		{System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.correo, yycolumn, yyline+1,  yytext());}

{Espacio}   {/*ignore*/}
.			{System.out.println("ERROR: " + yytext()); return new Symbol(sym1.error_flex, yycolumn, yyline+1,  yytext());}


//{CharEsp}	{System.out.println("caracter encontrado: " + yytext() + " linea : " + yyline+1 + " columna : " + yycolumn); return new Symbol(sym1.porcentaje, yycolumn, yyline+1,  yytext());}
