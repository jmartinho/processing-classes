/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 7 - 20140125

  Processing
    Visualizacao de dados de um ficheiro de texto
    neste exemplo mapeamos o numero de palavras 'arte' e 'tecnologia'
*/
// aula MTAD PAD 2014/01/25
// Joao Martinho Moura
//
// LER DADOS DE UM FICHEIRO DE TEXTO
// exemplo apresentado na aula


String linhas[];

void setup() {
  smooth();
  size (800, 600);
  background(255);

  linhas = loadStrings("texto.txt");  // abrimos o ficheiro de texto que esta na pasta data. o metoto load Strings devolve um array de linhas

  println ( "O texto tem " + linhas.length + " linhas" );
}


void draw() {
  noLoop();
  noStroke();
  for (int i=0; i<linhas.length; i++) {  // percorremos cada linha

    String linha = linhas[i];    
    println (linha);

    String[] palavras = split(linha, " ");  // dividimos a nossa string linha num array de palavras usando como delimitador o espaço

    for (int j=0; j<palavras.length; j++) {  // percorremos cada palavra

      String palavra = palavras[j];  // obtemos a palavra

      palavra = palavra.toLowerCase();  // transformamos em minusculo

      palavra = palavra.replace(".", "");  // removemos o ponto final

      if (palavra.equals("arte")) {  // se palavra for arte pinta vermelho
        fill(255, 0, 0);
      }
      else if (palavra.equals("tecnologia")) {  // se palavra for tecnologia pinta azul
        fill(0, 0, 200);
      }
      else {
        fill(100, 40); // ne não pinta a cinza claro
      }

      int tamanho = palavra.length()  *  5 ;  // o tamanho da bola corresponde ao tamanho da palavra

      ellipse(random(width), random(height), tamanho, tamanho);  // desenhamos
    }
  }
}
