/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 5 - 20131207

  Processing
    Fontes (tipos de letra)
*/
//  sumario: ARRAYS DE TEXTO
//
//  este programa mostra sequencialmente varias palavras na janela
//  as palavras sao guardadas num ARRAY de 10 posicoes
//
//  para o estilo de letra usamos PFont


PFont tipoLetra;  // declaracao da variavel chamada "tipoLetra" tipo PFont

String [] nomes = new String[10];  // declaracao de um ARRAY de textos
int indice = 0;

void setup() {
  tipoLetra = loadFont("Arial-Black-200.vlw");
  size(850, 450);
  smooth();
  nomes[0] = "casa";
  nomes[1] = "carro";
  nomes[2] = "caneta";
  nomes[3] = "lapis";
  nomes[4] = "mtad";
  nomes[5] = "arte";
  nomes[6] = "digital";
  nomes[7] = "lapis";
  nomes[8] = "papel";
  nomes[9] = "som";
  frameRate(10);
}

void draw() {
  textFont(tipoLetra);
  background(255);
  fill(0);
  text(nomes[indice],10,300);
  indice++;
  if ( indice > 9 ){
    indice = 0;
  }
}
