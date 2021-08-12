

public class TesteStringBuilder
{
    public static void main(String s[]) {
        //concatenando strings - Java cria objetos separados
        String txt1 = "Texto um";
        String txt2 = "Texto dois";
        String res1 = txt1 + " - " + txt2;
        System.out.println(res1);
        
        System.out.println("\n-------------\n");
        
        //usando StringBuilder
        StringBuilder sb = new StringBuilder("um texto de teste");
        sb.append(" - ");
        sb.append("Outro texto de teste");
        String res2 = sb.toString();
        System.out.println(res2);
    }
}
