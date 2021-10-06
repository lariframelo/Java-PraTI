public class Caneta
{
    //java é fortemente tipado
    //java tb é case sensitive
    
    //lista das propriedades (características da classe)
    String cor;
    double tam;
    
    //método construtor
    public Caneta() {
        cor = "azul";
        tam = 1;
    }
    
    //uma funcionalidade da caneta (método)
    public void escrever(String txt) {
        System.out.println("-----------------------------");
        System.out.println("Tamanho: " + tam);
        System.out.println("Cor tinta: " + cor);
        System.out.println(txt);
        System.out.println("-----------------------------");
    }
}
