

public class TesteWrapper
{
    public static void main(String args[])
    {
    //tipos primitivos
    //boolean, byte, short, int, long, float, double, char
    
    //classes wrappers
    //Boolean, Byte, Short, Integer, Long, Float, Double, Character
    
    Integer n1 = new Integer(123);
    Integer n2 = 345;
    String sn1 = n1.toString();
    
    
System.out.println(n1 + n2);
String xyz = "23423";
int nro = Integer.parseInt(xyz);

System.out.println("Valor convertido:" +nro);
}
}