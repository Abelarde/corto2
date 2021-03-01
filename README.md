# corto #3
Corto elaborado para la practica de generacion de Codigo de 3 direcciones, para el curso de Organizacion y lenguajes de Compiladores 2.

## Archivo Cup.cup

En este archivo se contruyo el esquema de traduccion dirigido por la sintaxis postfijo que recibe expresiones aritmeticas basica.

```
S ::= E:a {: System.out.println("Sentencencia analizada correctamente. Sin errores");
             System.out.print(a.C3D); 
          :};

E ::= E:a mas T:b {: RESULT = new new_temp(true, a.C3D + b.C3D, " =" + a.TMP + "+" + b.TMP); :}
    | E:a menos T:b{: RESULT = new new_temp(true, a.C3D + b.C3D, " =" + a.TMP + "-" + b.TMP); :}
    |T:a {: RESULT = a; :};

T ::= T:a por F:b {: RESULT = new new_temp(true, a.C3D + b.C3D, " =" + a.TMP + "*" + b.TMP); :}
    | T:a div F:b {: RESULT = new new_temp(true, a.C3D + b.C3D, " =" + a.TMP + "/" + b.TMP); :}
    |F:a {: RESULT = a; :};

F ::= left_par E:a right_par {: RESULT = a; :}
    |id:a {: RESULT = new new_temp(String.valueOf(a), ""); :}
    |enteros:a {:RESULT = new new_temp(String.valueOf(a), ""); :}
    |combinado:a {:RESULT = new new_temp(String.valueOf(a), ""); :};    
```

## Clase new_temp.java

Clase que nos ayudara con la generacion de nuevos temporales y con la transicion del codigo de tres direcciones generado.


```
public class new_temp {
    
    public static int CONTADOR;
    public String TMP = new String();
    public String C3D =  new String();

    public new_temp(boolean nuevo, String C3Dcarry, String C3Dnew) {
        CONTADOR = CONTADOR + 1;
        this.TMP = "t"+String.valueOf(CONTADOR);
        this.C3D = C3Dcarry + this.TMP + C3Dnew + "\n";
    }

    public new_temp(String TMP, String C3D){
        this.TMP = TMP;
        this.C3D = C3D;
    }    
    
}   
```
## Ejemplo

Escribiremos una cadena de entrada con operaciones aritmeticas para que sea analizado por nuestro parser. 

<p align="center">
  <img src="img/cadenaEntrada.jpg" width="800" alt="Cadena de Entrada">
</p>

Podemos observar que al ser analizado por las clases expuestas anteriormente obtenemos una cadena de salida con temporales generados por nuestra clase auxiliar "new_temporal" y obtenemos el codigo de tres direcciones de nuestra cadena completa. 

<p align="center">
  <img src="img/resultado.jpg" width="800" alt="Resultado obtenido">
</p>