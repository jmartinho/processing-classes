/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 3 - 201311123

  Processing
    TPC desenhar som

*/
// PAD_Aula-201311123_jmartinho
// TPC PROXIMA AULA
// elaborar programa que reaja ao volume do microfone


// ESTE PROGRAMA REAGE AO SOM 


// importacao da biblioteca mini (som)
import ddf.minim.*;

Minim minim;    // declaracao de objecto minim
AudioInput in;  //  declaracao de objecto audioin
float volume; 

void setup()
{
  background(222, 222, 222);
  size(640, 480);
  smooth();

  minim = new Minim(this);
  in = minim.getLineIn(Minim.STEREO, 512);
}

void draw()
{
  stroke(255);

  // vamos encontrar o volume:
  for (int i = 0; i < in.bufferSize() - 1; i++)
  {
    volume = (in.left.get(i) + in.right.get(i)) * 250 ;
  }

  // na variavel volume tempos o volume do sinal do microfone.
  // o aluno devera desenvolver um programa criativo que use
  // a intensidade do microfone

  // deixo aqui este exemplo:

  fill(255, 170);
  stroke(0, 220);
  ellipse(mouseX, mouseY, volume, volume);
}


void stop()
{
  // always close Minim audio classes when you are done with them
  in.close();
  minim.stop();
  super.stop();
}
