/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 5 - 20131207

  Processing
    PVector
*/
// PAD_Aula-20131207_jmartinho

// exemplo PVector

PVector posicao;  // declaracao de um PVector

void setup() {
  size(800,600);
  
  // inicializacao do PVector
  posicao = new PVector(360, 200);

}

void draw() {
  
  // vamos desenhar uma elipse na posicao do PVector
  
  ellipse(posicao.x, posicao.y, 250, 250);

  
}
