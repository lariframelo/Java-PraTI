

public class Aluno
{
    //definição dos atributos da classe
    private String nome;
    private Integer idade;
    private String email;
    
    
    public Aluno() {
        this.nome = " - ";
        this.email= " @ ";
        this.idade = 0; 
    }
    
    public Aluno(String nome, Integer idade, String email ) {
        this.nome = nome;
        this.email = email;
        this.idade = idade;
    }
    //metódos getters e setters (pra retornar o dado e ajustar o dado)
    public String getNome() {
        return this.nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getEmail() {
        return this.email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    
    public long getIdade() {
        return this.idade;
    }
    public void setIdade(Integer idade) {
        this.idade = idade;
    }
}

