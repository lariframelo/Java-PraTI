

public class Principal
{
    public static void main (String[] args) {
        double n1 = Tela.retornaDbl ("Informe um valor");
        double n2 = Tela.retornaDbl("Informe outro valor");
        String op = Tela.retornaTxt("Operação: (+, -, *, /)");
        
        double res = Calculadora.exec(n1,n2,op);
        
        Tela.mostraTxt("Resultado: " + res);
    }
}
