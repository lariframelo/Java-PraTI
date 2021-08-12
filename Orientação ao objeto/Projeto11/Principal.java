import dados.*;

public class Principal
{
    public static void main(String[] s) {
        Cliente c1 = new Cliente();
        c1.setNome("Fulano de Tao");
        
        System.out.println("Nome: "+ c1.getNome());
    }
}
