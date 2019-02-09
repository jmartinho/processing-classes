/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 9 - 20140218

  Processing
    Classes (programacao orienntada objetos, OOP)
    exemplo avancado com classe CARRO e PEAO
*/


Carro[] carros = new Carro[10];
Peao[] peoes = new Peao[2];

color[] carrosCores = {
  #c32a0e, #ffffff, #0f7ca2, #1c4147, #4e3b54, #515731, #69354c, #c8973a, #3d3f56, #355a5e
};

void setup() {
  size(640, 480);

  for (int i=0; i<carros.length; i++) {
    carros[i] = new Carro ( 30, (i+1)*50, (int) random(3, 10), carrosCores[i]  );
  }

  for (int i=0; i<peoes.length; i++) {
    peoes[i] = new Peao ( (int) random(0, width), height, (int) random(1, 3)    );
  }
}

void draw() {
  background(255, 255, 255);

  for (int i=0; i<carros.length; i++) {
    carros[i].desenhaCarro();

    boolean podeAndar = true ;

    for (int j=0; j<peoes.length; j++) { 

      if (dist (carros[i].posX + 120, carros[i].posY, peoes[j].posX, peoes[j].posY) < 80 ) {

        podeAndar = false;
      }
    }

    if ( podeAndar ) carros[i].movimentaCarro();
  }

  for (int i=0; i<peoes.length; i++) {
    peoes[i].desenhaPeao();       
    peoes[i].movimentaPeao();
  }
}
