/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 5 - 20131207

  Processing
    sketch criativo
*/
// PAD_Aula-20131207_jmartinho

// exemplo_sketch_criativo_novelos


PVector[] posicoes = new PVector[40];  // array com 40 PVectors

void setup(){
  size(800,600);
  smooth();
  background(255);
  
  // inicializamos os PVectors dentro do array
  for (int i=0; i<posicoes.length; i++){
    int x = (int) random(0,width);
    int y = (int) random(0,height);
    posicoes[i] = new PVector(x,y);
  }
}


void draw(){

  
  fill(255);
  stroke(0);

  // desenhamos
  for (int i=0; i<posicoes.length; i++){
    
    
    float distancia = dist(mouseX,mouseY,posicoes[i].x , posicoes[i].y);
     
    int tamanho = (int) distancia/10;
    ellipse(posicoes[i].x , posicoes[i].y, tamanho,tamanho);
    
  }
  
  // movemos aleatoriamente as bolas
  // alterando as posicoes dos PVectors dentro do array
  for (int i=0; i<posicoes.length; i++){
    posicoes[i].x += (int) random(-4,4);
    posicoes[i].y += (int) random(-4,4);
  }
  
}
