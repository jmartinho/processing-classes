/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 4 - 20131130

  Processing
    Arrays
*/

// PAD_Aula-201311130_jmartinho
// exemplo ARRAY de numeros inteiros
// o ARRAY vai guardar as posicoes verticais de 5 bolas
// que iremos animar no ecran

int[] numeros = new int[5];  // declaracao de um array de inteiros com 5 posicoes chamado numeros

void setup() {
  size(600, 450);
  background(255);
  numeros[0] = 10;    // na posicao 0 do array, colocamos o valor 10
  numeros[1] = 100;    // e assim sucessivamente
  numeros[2] = 40;    
  numeros[3] = 400;    
  numeros[4] = 150;   
  println (numeros);    // imprimimos na consola o array
}

void draw() {
  background(255);

  // com recurso a um cliclo for, vamos percorrer todo o array, acedendo
  // aos seus valores
  
  // vamos desenhar
  for (int i=0; i<numeros.length; i++) {
    ellipse(i*100 + 100, numeros[i], 60, 60);    // a posicao y da bola esta no array de numeros no indicei
  }

  // vamos mover
  for (int i=0; i<numeros.length; i++) {
    numeros[i]++;                          // incrementamos a posicao y de cada bola
    if (numeros[i]>height) numeros[i]=0;  // testamos se a bola chegou ao limite inferior da tela
  }
}
