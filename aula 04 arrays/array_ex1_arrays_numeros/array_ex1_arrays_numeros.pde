/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 4 - 20131130

  Processing
    Arrays
*/
// PAD_Aula-201311130_jmartinho
// exemplo ARRAY de numeros inteiros

// este programa nao desenha nada, apenas imprime valores na consola

int[] listaNumeros = new int[100];  // declaracao de um array de inteiros com 100 posicoes chamado listaNumeros

void setup(){
  listaNumeros[0] = 3;    // na posicao 0 do array, colocamos o valor 3
  
  listaNumeros[3] = 10;    // na posicao 3 do array, colocamos o valor 10
  
  listaNumeros[4] = 2;    // na posicao 4 do array, colocamos o valor 2
  
  listaNumeros[7] = 200;    // na posicao 7 do array, colocamos o valor 200
  
  listaNumeros[10] = 250;    // na posicao 7 do array, colocamos o valor 200
  
  noLoop(); // vamos executar o ciclo draw apenas uma vez
}

void draw() {

  println (listaNumeros[10]);    // imprimimos na consola do processing o valor que esta na posicao 10 do array
                                // isto e', vai imprimir o numero 250

}
