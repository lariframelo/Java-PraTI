

public class TesteTryCatch
{
    public static void main(String s[]) {
        int n1 = EntradaSaida.receberInt("Num 1");
        int n2 = EntradaSaida.receberInt("Num 2");
        double res = 0;
        
        try{
            res = n1 / n2;
        }
        catch(Exception e) {
            EntradaSaida.mostrarTexto("div por 0");
            EntradaSaida.mostrarTexto(e.getMessage());
        }
        
        EntradaSaida.mostrarTexto("Result: "+res);
    }
}
