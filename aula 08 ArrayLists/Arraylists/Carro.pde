

class Carro {
  
  // variaveis de instancia
  int posX;
  int posY;
  int velocidade;
  color cor;

  // construtor da classe Carro
  Carro(int px, int py, color c, int v) {
    posX = px;
    posY = py;
    velocidade = v;
    cor = c;
  }

  void desenha() {
    // desenho Carro 1
    strokeWeight(2);

    // rodas
    fill(0);  
    rect(posX+5, posY-10, 10, 50);
    rect(posX+30, posY-10, 10, 50);

    // carrocaria
    fill(cor);
    rect(posX, posY, 50, 30);
    
    // farois
    fill(255,255,0);
    rect(posX+40, posY, 10, 30);
  }

  void movimenta() {
    if (dist(mouseX, mouseY, posX+100, posY)>30  ) {
      posX+=velocidade;
      if (posX>width) posX=0;
    }
  }
}

