/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 3 - 201311123

  Processing
    Ciclo For

*/

// ciclo for

void setup() {
  size(500, 400); 
  smooth();
  background(255);
}

void draw() {
  background(255);
  
  // criamos um ciclo for para as linhas
  for (int i=0; i<10; i++) {
    strokeWeight(i);
    line(0, i*40, width, i*40);
  }

  // e o ciclo for para as caras
  for (int i=1; i<=3; i++) {
    strokeWeight(i*2);
    desenhaCara (125*i, 200, (255-i*50));
  }
}

// o metodo desenhaCara
void desenhaCara (int posX, int posY, int cinza) {
  fill(cinza);
  ellipse(posX, posY, 100, 100);
  fill(255);
  ellipse(posX-20, posY-20, 20, 20);
  ellipse(posX+20, posY-20, 20, 20);
}
