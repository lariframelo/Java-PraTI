import javax.swing.JOptionPane;

public class Janela {
    
    public static void main (String args []) {
       String sida; 
       //SEMPRE virá um texto (String)
       sida = JOptionPane.showInputDialog("Digite sua cidade");
       
       //mas eu posso usar uma classe para consertar 
       //mesmo assim, converte uma String no formato de número 
       //exemplo: "234" para 234
       int ida = Integer.parseInt(sida);
       
       String msg = "";
       if (ida >= 18) {
           msg = "ok. Tudo estalecido";
       } else {
           msg = "Não teve sorte... oeooo";
       }
        //mostra mensagem na janela de dialogo
        JOptionPane.showMessageDialog(null, msg);
    }
    
    
    
    
    
    
    
}
