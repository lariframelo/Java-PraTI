

public abstract class Cliente {
    private String nome;
    private String email;
    private int idade;
    
    /**
    * Contrutor com inicialização básica
    */
    public Cliente () {
        this.nome = "";
        this.email = "";
        this.idade = 0;
    }
    
    /**
     * Construtor
     * @param (String, String, int)
     */
    public Cliente(String nome, String email, int idade) {
        this.nome = nome;
        this.email = email;
        this.idade = idade;
    }
    
    //métodos "get" e "set"
    public String retornarNome() {
        return this.nome;
    }
    
    public void ajustarNome(String nome) {
        this.nome = nome;
    }
    
    public String retornarEmail() {
        return this.email;
    }
    
    public void ajustarEmail(String email) {
        this.email = email;
    }
    
    public int retornarIdade() {
        return this.idade;
    }
    
    public void ajustarIdade(int idade) {
        this.idade = idade;
    }
}


