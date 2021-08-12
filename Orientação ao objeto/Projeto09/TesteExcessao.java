

public class TesteExcessao
{
    public void main(String args[]) {
    try {
        System.out.println("valor do parametro que foi enviado:" +args[0]);
    }
    catch(ArrayIndexOutOfBoundsException bug) {
        System.out.println("Acesso a posição do array que nao existe");    
        }
    catch(Exception bug) {
        System.out.println("Bug geral: " +bug.getMessage());
    }
    finally {
        System.out.println("Sempre entra nessa parte do código");
    }
    }
}
