
import javax.swing.JOptionPane;
public class Tela
{
    public static int retornaInt(String txt) {
        // usa o metodo do java para abrir uma janela de diálogo
        // sempre retorna uma string
        String snum = JOptionPane.showInputDialog(txt);
        
        //converter uma string para número
        int inum = Integer.parseInt(snum);
        
        
        //retornar para quem usar esse metodo
        return inum;
        
    }
    
    public static void mostraTxt(String txt) {
        //mostra na janela de diálogo texto informado 
        JOptionPane.showMessageDialog(null,txt);
    }
}
