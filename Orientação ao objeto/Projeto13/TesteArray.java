import java.util.*;
public class TesteArray
{
    public static void main(String args[]) {
        //podemos declarar variáveis para comportar
        //mais de um valor (array)
        String[] nomes = new String[5];
        nomes[0] = "Fulano";
        nomes[1] = "Beltrano";
        nomes[2] = "Teste";
        
        int[] idades = new int[5];
        idades[0] = 12;
        idades[1] = 23;
        idades[2] = 34;
        
        System.out.println(nomes[1]+" com idade "+idades[1]);
        
        for (int i=0; i<nomes.length; i++) {
            System.out.println(nomes[i] + " - ");
        }
        
        System.out.println("\n ********* ");
        
        for (int i=0; i<idades.length; i++) {
            System.out.println(idades[i] + " - ");
        }
        
        System.out.println("\n\n -------------\n ");
        
        //outra forma de listar o conteúdo do array
        for (String nom : nomes) {
            System.out.print(nom + " - ");
        }
        
        System.out.println("\n ********* ");
        
        for (int ida : idades) {
            System.out.print(ida + " - ");
        }
    }   
}
