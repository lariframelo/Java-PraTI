
/**
 * Calculadora simples 
 * 
 * @author (Larissa Fraga Melo ) 
 *
 */
public class Calculadora
{
    
    /**
     * Método executar
     *
     * @param n1 double
     * @param n2 double
     * @param op String
     * @return Resultado da operação entre dois números
     */
    public static double executar(double n1, double n2, String op) throws MinhaEx{
        double result = 0;
        if (n2 == 7) {
            throw new MinhaEx();
        }
        if ( op.equals("+") ) 
            result = n1 + n2;
        if ( op.equals("-") ) 
            result = n1 - n2;
        if ( op.equals("*") ) 
            result = n1 * n2;
        if ( op.equals("/") ) 
            result = n1 / n2;
        return result;
    }
}
