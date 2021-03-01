/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package corto2;

/**
 *
 * @author eduab
 */
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
