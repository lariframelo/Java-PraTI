
public class Principal
{
    public static void main(String args []) {
        //obter os dados que o usuário informa 
        int ini = Tela.retornaInt("Informe um nro inteiro");
        int fim = Tela.retornaInt("Informe outro número inteiro");
        
        //cria o objeto para processamento
        Pares p = new Pares();
        String res = p.retornaNros(ini, fim);
        
        //e saída para resultado
        Tela.mostraTxt(res);
    }
}
