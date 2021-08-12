
/**
 * Escreva uma descrição da classe MinhaEx aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class MinhaEx extends Exception
{
    //contrutor
    /**
     * MinhaEx Construtor
     *
     */
    public MinhaEx() {
        super("Bug da Minha Ex");
    }
    
    //metodo que retorna algum texto de bug
    /**
     * Método getBug
     *
     * @return O valor de retorno
     */
    public String getBug() {
        return this.getMessage();
    }
}
