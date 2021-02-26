package analizador;
import java_cup.runtime.*; 

%%
%state A
%cupsym sym
%cup
%public
%unicode
%ignorecase

%class AnalizadorLexico
%line
%char
%column

Letras = [a-zA-Z_]
Enteros = [0-9]
Espacio=[" "| \t\r\n\f]  //+ uno o mas
id = {Letras}({Letras}|{Enteros}|"_")*
Combinado = ([a-zA-Z_]([a-zA-Z_]|[0-9])([a-zA-Z_]|[0-9])([a-zA-Z_]|[0-9])([a-zA-Z_]|[0-9])+[a-zA-Z_])

%%

"("         {  return new Symbol(sym.left_par , yycolumn, yyline+1,  yytext());}
")"         {  return new Symbol(sym.right_par , yycolumn, yyline+1,  yytext());}
"-"         {  return new Symbol(sym.menos , yycolumn, yyline+1,  yytext());}
"+"         {  return new Symbol(sym.mas , yycolumn, yyline+1,  yytext());}
"*"         {  return new Symbol(sym.por , yycolumn, yyline+1,  yytext());}
"/"         {  return new Symbol(sym.div , yycolumn, yyline+1,  yytext());}


{id}        { return new Symbol(sym.id, yycolumn, yyline+1,  yytext());}
{Enteros}+  { return new Symbol(sym.enteros, yycolumn, yyline+1,  yytext());}
{Combinado} { return new Symbol(sym.combinado, yycolumn, yyline+1,  yytext());}


{Espacio}   {/*ignore*/}
.	{System.out.println("ERROR: " + yytext()); return new Symbol(sym.error_flex, yycolumn, yyline+1,  yytext());}
