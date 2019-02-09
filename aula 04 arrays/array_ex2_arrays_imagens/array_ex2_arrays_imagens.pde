/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 4 - 20131130

  Processing
    Arrays
*/

// PAD_Aula-201311130_jmartinho
// exemplo ARRAY de imagens

PImage[] imagens = new PImage[10]; // declaracao de um array de imagens com 10 posicoes chamado imagens

void setup() {
  size(640, 480);     // tamanho da janela
  
  imagens[0]= loadImage("imagem_01.png");   // na posicao 0 do array, colocamos a imagem imagem_01.png
  imagens[1]= loadImage("imagem_02.png");   // na posicao 1 do array, colocamos a imagem imagem_02.png
  smooth();
}


void draw() {
  background(255);
  image(imagens[0], 100, 100);    // desenhamos a imagem que esta na posicao 0 do array

  image(imagens[1], 400, 100);    // desenhamos a imagem que esta na posicao 1 do array
}
