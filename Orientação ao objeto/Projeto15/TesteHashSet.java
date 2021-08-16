import java.util.*;
public class TesteHashSet
{
    public static void main(String[] s) {
        //alguns objetos 
        Aluno a1 = new Aluno("Joao", 12, "joao@teste.com");
        Aluno a2 = new Aluno("Maria", 23, "maria@teste.com");
        Aluno a3 = new Aluno("Aline", 34, "aline@teste.com");
        
        //outra forma, agora usando um conjunto (Set e MashSet)
        //orecusa ser importada de java.util
        Set<Aluno> cjtalu = new HashSet<Aluno>();
        cjtalu.add(a1);
        cjtalu.add(a2);
        cjtalu.add(a3);
        
        //conjunto nao permite adicionar elementos repetidos 
        
        imprimirAlunos(cjtalu); 
    }
    
    public static void imprimirAlunos(Set<Aluno> cjto) {
        for (Aluno alu : cjto) {
            System.out.println(alu.getNome());
        }
    }
}
