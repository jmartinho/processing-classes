/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 4 - 20131130

  Processing
    Arrays
*/

// PAD_Aula-201311130_jmartinho
// exemplo ARRAY de Strings (varios nome de pessoas)

String[] palavras = new String[5]; // declaracao de um array de Strings com 5 posicoes chamado palavras

// este programa nao desenha nada, apenas imprime valores na consola

void setup(){
  
  palavras[4] = "Gaspar";    // na posicao 4 do array, colocamos o valor de "Gaspar"
  palavras[2] = "Belchior";  // na posicao 2 do array, colocamos o valor de "Belchior"
  noLoop();            // o programa so' vai executar o ciclo draw apenas 1 vez
}

void draw(){
  println(palavras);  // vamos imprimir na consola o array completo
  
}
