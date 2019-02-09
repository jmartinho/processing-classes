/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 3 - 201311123

  Processing
    Imagens

*/
// imagems externas

PImage minhaImagem;

void setup(){
  size(400,300);
  minhaImagem = loadImage("imagem_01.png");
  background(255,255,255);
}


void draw(){
  
  image(minhaImagem, 100, 100);
  
}
