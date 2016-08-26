package analisador.lafaek;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;



/**
 * @author geovanniovinhas
 *
 * Aug 25, 2016
 */
public class Teste {
	
	public static String leitor(String path) throws IOException {
        BufferedReader buffRead = new BufferedReader(new FileReader(path));
        String linha = buffRead.readLine();
        String textos = "";
        while (linha != null) {
        	textos += linha;
            linha = buffRead.readLine(); // lê da segunda até a última linha
          }
        buffRead.close();
        return textos;
    }
	
	public static void main(String[] args) throws IOException{
	
	String expr = "/Users/geovanniovinhas/Downloads/src.txt";// lugar onde o arquivo para a entrada dos tokens armazena
	

    LafaekAnalyzer lexical = new LafaekAnalyzer(new StringReader(Teste.leitor(expr)));
    lexical.yylex();
	
	}

}
