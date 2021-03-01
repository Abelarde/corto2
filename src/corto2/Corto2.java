/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package corto2;
import analizador.AnalizadorSintactico;
import analizador.AnalizadorLexico;
import java.io.StringReader;

/**
 *
 * @author eduab
 */
public class Corto2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("Analizando...");
        corto2.new_temp.CONTADOR = 0;
        try {
            String texto_analizar = "(3+3)*5/3-1";
            AnalizadorSintactico ana = new AnalizadorSintactico(new AnalizadorLexico(new StringReader(texto_analizar)));
            ana.parse();

            if (AnalizadorSintactico.error == null) {
                System.out.println("Analisis sin errores");
            } else {
                System.out.println("Analisis con errores");
            }

        } catch (Exception e) {
            System.out.println("Exception: " + e.getMessage());
        }
        
        
        
        
    }
    
}
