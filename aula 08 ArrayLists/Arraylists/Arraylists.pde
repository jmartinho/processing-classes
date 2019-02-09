/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 7 - 20140125

  Processing
    igual ao exemoplo anterior mas com arraylists
    ARRAY LISTS e CLASSES
*/

ArrayList carros; // declaração

void setup(){
  size(640, 480);

  carros = new ArrayList();  // inicialização
  
  
  // colocar objectos dentro do arraylist
  carros.add (new Carro ( 30,  80, color(255, 000, 000), 5  ));
  carros.add (new Carro ( 60, 160, color(255, 200, 000), 10 ));
  carros.add (new Carro ( 60, 400, color(100, 200, 000), 2 ));
}

void draw(){
  background(255);
  
  // percorrer o Arraylist
  for (int i=0; i<carros.size(); i++){
    
    Carro c = (Carro) carros.get(i);
     
    c.desenha();
    c.movimenta();
  }
  
  fill(200);
  ellipse(mouseX,mouseY,30,30);
  
}
