/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 5 - 20131207

  Processing
    PFONT
*/
// PAD_Aula-20131207_jmartinho

// exemplo PFont simples

PFont tipoLetra1;  // declaramos um tipo de letra
PFont tipoLetra2;  // declaramos outro tipo de letra
  
void setup(){
  size(800,600);
  
  // carregamos as fontes
  tipoLetra1 = loadFont("Serif-90.vlw");
  tipoLetra2 = loadFont("DialogInput-240.vlw");
  
  smooth();
  
}


void draw(){
  background(0);
  
  // usamos um tipo de letra
  textFont(tipoLetra1);
  // desenhamos um texto
  text("MTAD",30,80);

  // usamos outro tipo de letra
  textFont(tipoLetra2);
  // desenhamos outro texto com o tipo de letra diferente
  text("Arte",30,280);
    
}
