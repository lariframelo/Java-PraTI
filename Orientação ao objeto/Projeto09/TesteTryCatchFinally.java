
public class TesteTryCatchFinally
{
    public static void main(String args[]) {
        String sn1, sn2;
        String txt;
        String vet[];
        int in1, in2;
        double res;
        
        try {
            sn1 = EntradaSaida.receberString("Num 1");
            sn2 = EntradaSaida.receberString("Num 2");
            txt = EntradaSaida.receberString("Texto");
            vet = txt.split(" ");
            in1 = Integer.parseInt(sn1);
            in2 = Integer.parseInt(sn2);
            res = in1 / in2;
            EntradaSaida.mostrarTexto(vet[4]+": "+res);
        }
        catch(ArithmeticException e) {
            EntradaSaida.mostrarTexto(e.getMessage());
        }
        catch(NumberFormatException e) {
            EntradaSaida.mostrarTexto(e.getMessage());
        }
        catch(IndexOutOfBoundsException e ) {
            EntradaSaida.mostrarTexto(e.getMessage());
        }
        catch(Exception e) {
            EntradaSaida.mostrarTexto("Bug!");
        }
        finally{
            EntradaSaida.mostrarTexto("Sempre passa aqui");
        }
    }
}
