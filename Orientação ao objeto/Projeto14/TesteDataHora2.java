import java.util.*;
import java.text.*;

public class TesteDataHora2
{
    public static void main(String s[]) {
        //GregorianCalendar é outra classe para manipulação de tempo
        //Calendar é a classe abstrata e GregianCalendar é a implementação
        Calendar cal = new GregorianCalendar();
        
        cal.set(Calendar.DAY_OF_MONTH, 31);
        cal.set(Calendar.MONTH, 11); //mes comeca com 0 = janeiro
        cal.set(Calendar.YEAR, 2020);
        cal.set(Calendar.HOUR_OF_DAY, 23);
        cal.set(Calendar.MINUTE, 30);
        cal.set(Calendar.SECOND, 0);
        
        //misturando com o "formatador" simples
        DateFormat fmt = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        System.out.println(fmt.format(cal.getTime()));
        
        //adicionando valores("andando" no calendário)
        cal.add(Calendar.DAY_OF_MONTH, 1);
        System.out.println(fmt.format(cal.getTime()));
        
        //para subtrair valores, adiciona valor negativo
        cal.add(Calendar.MONTH, -1);
        System.out.println(fmt.format(cal.getTime()));
        
        //mudando somente o valor referenciado
        cal.set(Calendar.DAY_OF_MONTH, 31);
        cal.set(Calendar.MONTH, 11) //mês começa com 0 = janeiro
        cal.set(Calendar.YEAR, 2020);
        
        cal.roll(Calendar.DAY_OF-MONTH, 5);
        System.out.println(fmt.format(cal.getTime()));
    }
}
