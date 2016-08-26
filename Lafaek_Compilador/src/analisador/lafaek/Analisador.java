package analisador.lafaek;

import java.io.File;
import java.nio.file.Paths;

/**
 * @author geovanniovinhas
 *
 * Aug 25, 2016
 */
public class Analisador {

	public static void main(String[] args) {
		String rootPath = Paths.get("").toAbsolutePath().toString();
        String subPath = "/src/analisador/lafaek/";
        
        String file = rootPath + subPath + "Lafaek.lex";

        File sourceCode = new File(file);

        JFlex.Main.generate(sourceCode);


	}

}
