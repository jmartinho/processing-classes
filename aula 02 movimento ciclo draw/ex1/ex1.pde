/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 2 - 20131115

  Introducao Processing
  Movimento através do ciclo principal

*/

// declaracao e inicializacao de variaveis

// a posicao da nossa bola ao longo do tempo: coord x e y
int posX = 10;
int posY = 10;
// o sentido do movimento: horizontal e vertical
int sentidoX = 1;
int sentidoY = 1;

// estado inicial do programa
void setup() {
  size(600, 400);  // tamanho da janela
  smooth();        // suaviza os graficos
  background(255);  // cor inicial do fundo
  frameRate(15);    // velocidade do programa
}

// ciclo principal do programa

void draw() {
  
  // vamos gerar um numero aleatorio entre 2 e 20
  float numeroAleatorio = random(2, 20);

  // se pressionarmos uma tecla
  if (keyPressed) {
    if (key=='a') {    // se a tecla for a minusculo
      fill(255, 255, 0);
    } 
    else if (key=='v') {  // se a tecla for v minusculo
      fill(255, 0, 0);
    }
  }else{
    fill(255, 255, 255);  // se nao houver teclas pressionadas entao pintamos a branco
  }

  // desenhamos um circulo na posicao posX e posY, com o tamanho igual ao valor do numero
  // aleatorio regado
  ellipse(posX, posY, numeroAleatorio, numeroAleatorio);

  // modificamos os valores das coordenadas
  posX = posX + (10 * sentidoX);
  posY = posY + (5 * sentidoY);

  // deteccao dos limites esquerdo e direito
  if (posX > width) {
    sentidoX = -1;
  }
  if (posX < 0) {
    sentidoX = 1;
  }
  
  // deteccao dos limites topo e fundo
  if (posY > height) {
    sentidoY = -1;
  }
  if (posY < 0) {
    sentidoY = 1;
  }


  // para termos um efeito de rasto e deixar os frames anteriores
  // vamos pintar a branco com opacidade de 3, um rectangulo do tamanho da janela
  fill(255, 255, 255, 3);
  // para não colocar contorno no rectangulo
  noStroke();
  // desenho do rectangulo
  rect(0, 0, width, height);

  // voltamos a colocar o contorno a preto
  stroke(0);
  
  // se o mouse for pressionado, entao desenhamos uma linha desde a posicao do mouse
  // ate' 'a posicao da bola
  if (mousePressed) {
    line(mouseX, mouseY, posX, posY);
  }

  // vamos imprimir na consola os valores da posicao X e Y
  println("valor de posX: " + posX);
  println("valor de posY: " + posY);

}
