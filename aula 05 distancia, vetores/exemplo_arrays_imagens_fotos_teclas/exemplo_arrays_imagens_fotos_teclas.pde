/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 5 - 20131207

  Processing
    Imagens em arrays. Controlo por teclas
*/
//PAD_Aula-20131207_jmartinho

// exemplo imagens em array

PImage[] imagens = new PImage[10];
int indice = 0;

void setup() {
  frameRate(25);
  size(612, 612);

  imagens[0]= loadImage("foto0.jpg");
  imagens[1]= loadImage("foto1.jpg");
  imagens[2]= loadImage("foto2.jpg");
  imagens[3]= loadImage("foto3.jpg");
  imagens[4]= loadImage("foto4.jpg");
  imagens[5]= loadImage("foto5.jpg");
  imagens[6]= loadImage("foto6.jpg");
  imagens[7]= loadImage("foto7.jpg");
  imagens[8]= loadImage("foto8.jpg");
  imagens[9]= loadImage("foto9.jpg");
}


void draw() {

  image(imagens[indice], 0, 0);
  
  noStroke();
  fill(0,200);
  rect(10,10,300,30);
  fill(255);
  text("tecla 'm' para seguinte, tecla 'n' para anterior",25,30);
}

void keyReleased() {
  if (key=='m') {
    indice++;
    if (indice>9) {
      indice=0;
    }
  }
  if (key=='n') {
    indice--;
    if (indice<0) {
      indice=9;
    }
  }
}
