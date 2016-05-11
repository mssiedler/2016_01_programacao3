/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package formatandodata;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author marcelosiedler
 */
public class FormatandoData {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ParseException {
        /*
            CONVERTENDO STRING PARA DATA --- upd-ok e no add-ok
        */
        String dataStr = "12/11/2012";
        SimpleDateFormat sf1 = new SimpleDateFormat("dd/mm/yyyy");
        Date data = sf1.parse(dataStr);
        System.out.println(data.toString());
        
        /*
            CONVERTENDO DATA PARA STRING -- index e no upd
        */
        Date dataAtual = new Date();
        SimpleDateFormat sf2 = new SimpleDateFormat("dd/mm/yyyy");
        String dataExibir = sf2.format(dataAtual);
        System.out.println(dataExibir);
        
        
        
        
    }
    
}
