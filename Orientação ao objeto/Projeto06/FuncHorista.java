

public class FuncHorista extends Funcionario
{
    private int qtd;
    private double val;
    
    /**
     * Construtor para objetos de classe FuncHorista
     */
    public FuncHorista(String nom, String ema, int qtd,double val) {
        //chamando o contrutor da classe pai
        super(nom,ema);
        this.qtd = qtd;
        this.val = val;
    }
    
    //metódo para calcular salário
    public double calcularSalario() {
        double base = (this.qtd * this.val);
        double sal = base - (base * this.TAX);
        return sal;
        
    }
}
