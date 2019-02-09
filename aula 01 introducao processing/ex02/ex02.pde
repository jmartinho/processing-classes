/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 1 - 201311109

  Introducao Processing
  Modo activo (ciclo draw)
  Variaveis
  
*/

// modo Activo (com declaracao do setup e do draw)

// declaracao de variavel com atribuicao de valor
int posicaoY = 0;

// declaracoes iniciais do programa
void setup(){
  // tamanho da janela
  size(800,400);
  // velocidade de refrescamento do ciclo principal
  frameRate(15);
  // cor de fundo
  background(255,255,255);
}

// o ciclo principal do programa
void draw(){
  
  // desenho de uma linha
  line(0,posicaoY,800,posicaoY);
  
  // incremento da variavel posicaoY
  posicaoY = posicaoY + 10;
 
}
