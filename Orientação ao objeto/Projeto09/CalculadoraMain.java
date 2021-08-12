

public class CalculadoraMain
{
    public static void main(String s[]) {
        double n1, n2, res;
        String op;
        n1 = EntradaSaida.receberDouble("Num 1");
        n2 = EntradaSaida.receberDouble("Num 2");
        op = EntradaSaida.receberString("Operador");
        
        try{
            res = Calculadora.executar(n1, n2, op);
        } catch (MinhaEx e) {
            EntradaSaida.mostrarTexto(e.getBug());
            res = 0;
        }
        EntradaSaida.mostrarTexto("Result: "+res);
    }
}
