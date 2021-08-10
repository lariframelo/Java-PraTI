import javax.swing.*;





//receberString
public class EntradaSaida
{
    public static void mostrarTexto(String txt) {
        //mostra na janela de diálogo texto informado 
        JOptionPane.showMessageDialog(null,txt);
    }
    
    
        public static int receberInt(String txt) {
        // usa o metodo do java para abrir uma janela de diálogo
        // sempre retorna uma string
        String sopt = JOptionPane.showInputDialog(txt);
        
        //converter uma string para número
        int opt = Integer.parseInt(sopt);
        
        
        //retornar para quem usar esse metodo
        return opt;
        
    }
    
    public static String receberString(String txt) {
        String sval = JOptionPane.showInputDialog(txt);
        return sval;
    }
    }
    
    
