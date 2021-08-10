

public class ClienteVip extends Cliente
{
    //variavel que contem o limite do cheque especial
    double limite = 3000;
    
    public ClienteVip(String n, String e, int i) {
        super(n,e,i);
    }
    
    public void ajustarLimite() {
        this.limite += 1000;
    }
    
    public double retornarLimite() {
        return this.limite;
    }
}
