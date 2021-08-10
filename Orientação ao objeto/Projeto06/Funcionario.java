

public abstract class Funcionario
{
    //constante pode ser acessada
    //dentro da estrutura hierarquica (protected)
    protected final double TAX = 0.10;
    
    //outros atributos com acesso local 
    private String nom;
    private String ema;
    public Funcionario() {
        this.nom = "Vazio";
        this.ema = "vazio@vazio.com";
    }
    
    /**
     * Construtor para objetos da classe Funcionario
     */
    public Funcionario(String nom, String ema)
    {
       this.nom = nom;
       this.ema = ema; 
    }

    /*
     * Método que ajusta o nome do funcionário
     */
    public void setNome(String nom) {
        this.nom = nom;
    }
    
    /*
     * Método que identifica nome do funcionário
     */
    public String getNome() {
        return this.nom;
    }
    
    
    //metódo modelo para ser OBRIGATORIAMENTE implementado
    //nas subclasses (classes que herdam Funcionario)
    public double calcularSalario() {
        
        return 0;
    }
}
