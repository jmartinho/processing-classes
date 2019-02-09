/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 5 - 20131207

  Processing
    Calculo de distancias (lembram-se do teorema de pitagoras?)
*/

// PAD_Aula-20131207_jmartinho

// exemplo calculo de distancia entre dois pontos

PVector posicao1;  // declaramos um PVector


void setup(){
  size(800,600);
  smooth();
  background(255);
  
  // inicializamos o PVector com x e y no centro da janela
  posicao1 = new PVector(width/2,height/2);
}


void draw(){
  background(255);
  fill(255);
  
  // desenhamos uma bola na posicao do PVector
  ellipse(posicao1.x , posicao1.y, 60,60);
  // desenhamos uma bola na posicao do mouse
  ellipse(mouseX , mouseY, 10,10);
  // desenhamos uma linha entre os dois
  line(posicao1.x,posicao1.y,mouseX,mouseY);
  
  // calculamos a distancia entre os dois pontos
  float distancia = dist(posicao1.x,posicao1.y,mouseX,mouseY);
  
  // vamos colocar o valor da distancia no ecran
  fill(0);
  text("A distancia do mouse 'a bola e' de: " + distancia, 30,30);
}
