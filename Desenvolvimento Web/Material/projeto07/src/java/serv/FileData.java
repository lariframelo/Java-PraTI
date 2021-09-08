/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serv;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author odair.souza
 */
public class FileData 
{
    private List<String> texto = new ArrayList<String>();
    private String dir;
    private String arq;
    
    
    public FileData() {
        //referencia arquivo de dados
        this.dir = "C:\\_odi\\codigos-xtras\\_aulas\\03-Mais-Pra-Ti\\java-03-jsp-servlet-jstl\\projeto07\\build\\web\\txt\\";
        this.arq = this.dir + "dados.txt"; 
    }

    /**
     * @return the texto
     */
    public List<String> getTexto() throws IOException {
        
        FileReader fr = new FileReader(this.arq);
        BufferedReader br = new BufferedReader(fr);

        //faz a leitura por linha
        String linha = "";
        while ((linha = br.readLine()) != null) {
            this.texto.add(linha);
        }
        
        return texto;
    }
    
    
}
