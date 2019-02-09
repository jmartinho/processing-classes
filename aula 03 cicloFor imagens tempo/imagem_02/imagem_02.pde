/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 3 - 201311123

  Processing
    Imagens

*/
//PAD_Aula-201311123_jmartinho
// imagems externas

PImage minhaImagem01;
PImage minhaImagem02;

void setup(){
  size(500,400);
  minhaImagem01 = loadImage("imagem_01.png");
  minhaImagem02 = loadImage("imagem_02.png");
  
  background(255,255,255);
}


void draw(){
  imageMode(CENTER);

  if (mousePressed){

      image(minhaImagem01, mouseX, mouseY);

      image(minhaImagem02, mouseX, mouseY);

  }
}
