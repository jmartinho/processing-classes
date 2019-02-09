/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 3 - 201311123

  Processing
    Temporisador (atraves de frame count)

*/

// tempo (atraves de contador)

int tempo = 0;

void setup(){
  size(700,300);
  frameRate(25);
  background(255,255,255);
  smooth();
}


void draw(){
  background(0);
  tempo = tempo + 1;
  
  rect(0,0,tempo,10);
  
  if (tempo < 100) {
    ellipse(200,200,100,100); 
  }
  if (tempo > 100 && tempo <200) {
    rect(100,200,300,20); 
  } 
  
  if (tempo>200){
    tempo=0;
  }
}
