
/**
 * Escreva uma descrição da classe Cliente aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class Cliente
{
    //definição dos atributos da classe
    private String nome;
    private String email;
    private long telefone;
    
    public Cliente() {
        this.nome = " - ";
        this.email= " @ ";
        this.telefone = 0; 
    }
    
    public Cliente(String nome, String email, long telefone) {
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
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
    
    public long getTelefone() {
        return this.telefone;
    }
    public void setTelefone(Long telefone) {
        this.telefone = telefone;
    }
}
