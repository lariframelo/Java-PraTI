

public class Principal
{
    public static void main(String s[]) {
        //cria o objeto
        Cliente fulano = new Cliente();
        
        //usando o método para obter o nome
        System.out.println("Nome do cliente 1: " + fulano.getNome());
        
        //usando o método para ajustar o nome
        fulano.setEmail("fulano@tao.com.br");
        
        System.out.println("Nome do cliente 1: " + fulano.getNome());
        System.out.println("Novo e-mail do cliente 1: " + fulano.getEmail());
        System.out.println("Telefone do cliente 1: " + fulano.getTelefone());
    }
}
