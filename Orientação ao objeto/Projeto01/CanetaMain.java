

public class CanetaMain
{
    
    public static void main (String args []) {
        //criação de objeto real//
        Caneta bic = new Caneta ();
        
        //e aqui o uso do objeto//
        bic.ajustarCor ("azul");
        bic.ajustarTamanho (12);
        bic.escrever("texto formatado");
        
    }
    
}
