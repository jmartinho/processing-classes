/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 6 - 20131213

  Processing
    MIDI
*/
//
//  MIDI: EXEMPLO BASICO (contem exemplo de envio de nota
//


import rwmidi.*;    // importar a biblioteca RWMIDI

MidiInput input;    // definir obtecto MIDI IN
MidiOutput output;  // definir obtecto MIDI OUT

ArrayList notas;

void setup() {
  smooth();
  frameRate(25);
  smooth();
  size(127, 127);

  // LISTAGEM DOS CONTROLADORES ACTIVOS MIDI
  //
  //  dependendo da configuracao de cada computador, deverao verificar a consola para obter
  //  o indice desejado (o indice comeca sempre em zero)
  //
  println("-- -- -- inPut -- -- -- -- -- -- -- -- -- -- -- -- ");
  println(RWMidi.getInputDeviceNames()[0]);    // indice 1
  println(RWMidi.getInputDeviceNames()[1]);    // indice 2
  //println(RWMidi.getInputDeviceNames()[2]);  // ...  Se alguma linha der um erro, entao devem comentar

  println("-- -- -- outPut -- -- -- -- -- -- -- -- -- -- -- -- -- ");
  println(RWMidi.getOutputDeviceNames()[0]);
  println(RWMidi.getOutputDeviceNames()[1]);
  println(RWMidi.getOutputDeviceNames()[2]);
  //println(RWMidi.getOutputDeviceNames()[3]);
  //println(RWMidi.getOutputDeviceNames()[4]);
  //println(RWMidi.getOutputDeviceNames()[5]);


  // ATRIBUICOES ao input do device 0 (BUS 1 do IAC ou LoopBe1) e ao output (BUS 1 do IAC ou LoopBe1)
  // no meu caso é o 0 nos dois, mas depende em cada computador

  input = RWMidi.getInputDevices()[0].createInput(this);    // o meu teclado
  output = RWMidi.getOutputDevices()[0].createOutput();     // o o bus IAC
}


void draw() {
  // nao desenhamos nada, pois este e' somente um exemplo de teste
}



void mousePressed() {        // so´ para exemplo, quando clicamos o rato no ecran, enviamos uma nota musical

  output.sendNoteOn(0, 50, 80);  // (canal, pitch da nota musical, velocidade de tecla)

  // output.sendNoteOn(0, mouseX, 80);    // experimentem com este exemplo, e verao que o pitch muda consoante a posicao do clique

  //output.sendNoteOff(0, 50, 80); // para enviarem nota OFF. Devera' aqui haver um timer ou contador que controle os tempos
}
