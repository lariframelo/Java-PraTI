

public class Caneta {
    //características da caneta//
    //representadas por variáveis//
    String cor;
    int tamanho;
    
    //funcionalidades da caneta//
    //representadas por método//
    public void ajustarCor (String cor) {
        this.cor = cor;
    }
    
    public void ajustarTamanho (int tamanho) {
        this.tamanho = tamanho;
    }
    public void escrever (String txt) {
        System.out.println ("Tam: " + this.tamanho);
        System.out.println ("Cor: " + this.cor);
        System.out.println ("Texto informado:" + txt);
    }
}
