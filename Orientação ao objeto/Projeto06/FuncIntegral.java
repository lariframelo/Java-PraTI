

public class FuncIntegral extends Funcionario
{
    private double base;
    /**
     * Construtor para objetos da classe FuncIntegral
     */
    public FuncIntegral(String nom,String ema, double base) {
     super(nom, ema);
     this.base = base;
}

//metódo para calcular salário
    public double calcularSalario() {
        double sal = this.base - (this.base * this.TAX);
        return sal;
        
    }
}