// aula MTAD PAD 2014/01/18
// Joao Martinho Moura
//
//  Classes (continuacao)
//


class Peao {     

  // variaveis de instacia
  int posX;
  int posY;
  int velocidade;

  // construtor da classe
  Peao (int recebePosX, int recebePosY, int recebeVelocidade) {
    posX = recebePosX;
    posY = recebePosY;
    velocidade = recebeVelocidade;
  }

  void desenhaPeao() {
    // desenho
    strokeWeight(1);

    fill(180);
    ellipse(posX, posY, 15, 15);
  }

  void movimentaPeao() {
    posY = posY-velocidade;
    if (posY<0) {
      posY=height;
      posX= (int)random( 200, width);
    }
  }
}

