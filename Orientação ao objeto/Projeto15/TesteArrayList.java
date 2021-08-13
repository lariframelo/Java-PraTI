import java.util.*;

public class TesteArrayList
{
    public static void main(String[] s) {
        //forma "padrão" de usar array
        //nesse caso, um array de alunos 
        Aluno[] vetalu = new Aluno[3];
        vetalu[0] = new Aluno("Fulano", 23, "fulano@tao.com");
        vetalu[1] = new Aluno("Beltrano", 34, "beltrano@tao.com");
        vetalu[2] = new Aluno("Outro", 45, "outro@tao.com");
        System.out.println("Segundo aluno cadastrado: "+vetalu[1].getNome());
        
        System.out.println("\n-----------------\n");
        
        //alguns objetos 
        Aluno a1 = new Aluno("João", 12, "joao@teste.com");
        Aluno a2 = new Aluno("Maria", 23, "maria@teste.com");
        Aluno a3 = new Aluno("Aline", 34, "alune@teste.com");
        
        //outra forma, usando a interface List e a Classe ArrayList
        //precisa ser importada de java.util
        
        //dessa forma funciona, mas permite adicionar qq objeto da lista
        List x = new ArrayList();
        
        //a forma mais usual é utilizando
        //a sintaxe "generics" (a partir do java 5)
        List<Aluno> lisalu = new ArrayList<Aluno>(); //ArrayList<>()
        lisalu.add(a1);
        lisalu.add(a2);
        lisalu.add(a3);
        
        Aluno obj = lisalu.get(1);
        System.out.println("Segundo aluno cadastrado: "+obj.getNome());
        
        imprimirAlunos(lisalu);
    }
    
    public static void imprimirAlunos(List<Aluno> lista) {
        for (Aluno alu : lista) {
            System.out.println("Nome do aluno: "+ alu.getNome());
        }
    }
}
