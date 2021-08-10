
import javax.swing.JOptionPane;
public class Tela
{
    /** Método que exibe uma janela de diálogo para receber 
     * um texto e retornar esse texto ...
     * @param (String)
     * @return (String)
     */
    public static String retornaTxt(String txt) {
        String sval = JOptionPane.showInputDialog(txt);
        return sval;
    }
    
    /**
     * Método que exibe janela de diálogo para receber 
     * um texto e converter para inteiro 
     * @param (String)
     * @return (int)
     */
    public static int retornaInt(String txt) {
        // usa o metodo do java para abrir uma janela de diálogo
        // sempre retorna uma string
        String sval = JOptionPane.showInputDialog(txt);
        
        //converter uma string para número
        int ival = Integer.parseInt(sval);
        
        
        //retornar para quem usar esse metodo
        return ival;
        
    }
    /**
     * Método que exibe janela de diálogo para receber
     * um texto e converter para double
     * @param (String)
     * @return (double)
     */
    public static double retornaDbl(String txt) {
        String sval = retornaTxt(txt);
        double dval = Double.parseDouble(sval);
        return dval;
    }
    
    /**
     * Método que exibe uma janela de diálogo exibir 
     * um texto informado por parâmetro 
     * @param (String)
     */
    public static void mostraTxt(String txt) {
        //mostra na janela de diálogo texto informado 
        JOptionPane.showMessageDialog(null,txt);
    }
}
