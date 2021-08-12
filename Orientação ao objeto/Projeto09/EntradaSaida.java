/**
 * Classe para entrada de String, int e double
 * e exibição de saída como texto
 * @autor (Larissa Melo)
 */
import javax.swing.*;

public class EntradaSaida
{
    /**
     * Método mostrarTexto
     *
     * @param txt Um parâmetro
     */
    public static void mostrarTexto(String txt) {
        //mostra na janela de diálogo texto informado 
        JOptionPane.showMessageDialog(null,txt);
    }
    
    
        /**
         * Método receberInt
         *
         * @param msg Um parâmetro
         * @return O valor de retorno
         */
        public static int receberInt(String msg) {
        String snro;
        int inro;
        snro = JOptionPane.showInputDialog(msg);
        try {
            inro =  Integer.parseInt(snro);
        }
        catch(Exception e) {
            JOptionPane.showMessageDialog(null, "Digite um número inteiro");
            inro = 0;
        }
        return inro;
    }
    
    /**
     * Método receberString
     *  Método para receber uma String
     * @param msg Um parâmetro
     * @return um texto
     */
    public static String receberString(String msg) {
        String txt = JOptionPane.showInputDialog(msg);
        return txt;
    }
    
    /**
     * Método receberDouble
     *
     * @param msg Um parâmetro
     * @return O valor de retorno
     */
    public static double receberDouble(String msg) {
        String snro;
        double dnro;
        snro = JOptionPane.showInputDialog(msg);
        try {
            dnro = Double.parseDouble(snro);
        } catch(Exception e) {
            JOptionPane.showMessageDialog(null, "Digite apenas números!");
            dnro = 0;
        }
        return dnro;
    }
    }
    
    
