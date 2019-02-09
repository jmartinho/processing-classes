/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 5 - 20131207

  Processing
    sketch criativo
*/
// PAD_Aula-20131207_jmartinho

// exemplo_sketch_criativo_dist

PVector[] posicoes = new PVector[50]; // array com 50 PVectors

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
  background(255);

  // desenhamos
  for (int i=0; i<posicoes.length; i++){
    
    stroke(0);
    
    float distancia = dist(mouseX,mouseY,posicoes[i].x , posicoes[i].y);
    
    int tamanho = (int) distancia/10;
    ellipse(posicoes[i].x , posicoes[i].y, tamanho,tamanho);

    if (distancia<300){
      stroke(100);
      line(mouseX,mouseY,posicoes[i].x , posicoes[i].y);
    }
    
  }
  
  // movemos
  for (int i=0; i<posicoes.length; i++){
    posicoes[i].x +=2;
   
    if (posicoes[i].x>width){
      posicoes[i].x=0;
    }

  }
  
}
