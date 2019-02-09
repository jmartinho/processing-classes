// aula MTAD PAD 2014/01/11
// Joao Martinho Moura
//
//  Classes
//


class Carro {      // declaracao da classe com o nome Carro

    // variaveis de instacia
  int posX;
  int posY;
  int velocidade;
  color cor;

  // construtor da classe
  Carro (int recebePosX, int recebePosY, int recebeVelocidade, color recebeCor) {
    posX = recebePosX;
    posY = recebePosY;
    velocidade = recebeVelocidade;
    cor = recebeCor;
  }

  // metodo para desenhar o carro no ecran
  void desenhaCarro() {
    // desenho
    strokeWeight(2);

    // pneus
    fill(100, 100, 100);
    rect(posX+5, posY-10, 10, 50);
    rect(posX+30, posY-10, 10, 50);

    // carrocaria
    fill(cor);
    rect(posX, posY, 50, 30);
  }

  // metodo para movimentar o carro no ecran
  void movimentaCarro() {
    // movimento
    
    // detecta se o peao nao esta' 'a frente
    if (dist(mouseX-50, mouseY, posX+20, posY)>50) {
      posX = posX + velocidade;
    }
    
    // detecta se chegou ao limite do ecran
    if (posX>width) {
      posX=0;
    }
  }
}


