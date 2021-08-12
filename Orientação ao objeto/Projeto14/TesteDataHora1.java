import java.util.*;
import java.text.*;

public class TesteDataHora1
{
    public static void main(String s[]) {
        //classe Data não é do pacote padrão java.lang
        //precisa ser importado do java.util
        Date hoje = new Date();
        System.out.println(hoje);
        
        //alem da classe basee (Date), temos classes de formatação 
        //a DateFormat e a SimpleDateFormat sao do java.text
        DateFormat fmt = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        System.out.println(fmt.format(hoje));
        
        //fazer o inverso, ou seja, pegar um texto em formato data
        //e converter para um objeto do tipo Data (precisa try/cacht)
        try {
            String entrada = "25/09/1980";
            DateFormat fmt2 = new SimpleDateFormat("dd/MM/yyyy");
            Date aniver = fmt2.parse(entrada);
            System.out.println(fmt.format(aniver));
        }
        catch(Exception e) {
            System.out.println("Formato de data invalido");
        }
    }
}
