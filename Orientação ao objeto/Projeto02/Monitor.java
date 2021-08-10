

public class Monitor
{
    //atributos monitor//
    private int reso; 
    private String tipo; 
    private String sep;
    
    //metodo contrutor//
    public Monitor() {
        this.tipo = "LED";
        this.ajustarReso(1024);
    }
    
    //metodo que exibe mensagem na tela quando monitor é ligado//
    public void ligar() {
        System.out.println("Ligando monitor...");
        System.out.println(" ");
    }
    
    //metodo que exibe mensagem quando monitor é desligado//
    public void desligar() {
        System.out.println(" ");
        System.out.println("Desligando monitor...");
    }
    
    //metodo que mostra algo na tela//
    public void exibirMsg(String txt) {
        System.out.println(" ");
        System.out.println(this.sep);
        System.out.println("Resolução atual: " + this.reso);
        System.out.println(txt); 
        System.out.println(this.sep);
        System.out.println(" ");
    }
    //metódos auxiliares para ajustar atributos//
    public void ajustarReso (int reso) {
        if (reso != 1024 && reso != 1080 && reso !=1600) {
            this.reso = 1024;
        }
        else {
        this.reso = reso;
        }
        this.ajustarSep();
} 

    //metodo para ajustar o simbolo que representa a resolução
    private void ajustarSep() {
        String sep ="";
        int qtd = (int) (this.reso/100);
        for (int i=0; i<qtd; i++) {
            sep += "-";   
        }
        this.sep = sep;
    }
}
