/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 7 - 20140111

  Processing
    Classes (programacao orienntada objetos, OOP)
*/
//
//  Classes
//

// declaracao de 3 objectos, do tipo Carro
Carro carro1 ;
Carro carro2 ;
Carro carro3 ;

void setup(){
  size(640,480);
  
  // criar instancias carro1, carro2 e carro3
  
  // o carro 1 sera' vermelho, e tera uma velocidade de 4
  carro1 = new Carro ( 30, 50, 4, color(255,0,0)  );
  
  // o carro 2 sera' verde, e tera uma velocidade de 10
  carro2 = new Carro ( 30, 150, 10, color(0,255,0)  );
  
  // o carro 3 sera' azul, e tera uma velocidade de 15
  carro3 = new Carro (50, 300, 15, color(0,0,255) );
  
}


void draw(){
  background(255,255,255);
  
  // aqui chamamos os metodos que estao definidas na classe Carro
  
  carro1.desenhaCarro();       // desenhamos o carro 1
  carro1.movimentaCarro();     // movimentamos o carro 1
  
  
  carro2.desenhaCarro();        // desenhamos o carro 2
  carro2.movimentaCarro();      // movimentamos o carro 2
  
  carro3.desenhaCarro();        // desenhamos o carro 3
  carro3.movimentaCarro();      // movimentamos o carro 3
  
  fill(200);
  ellipse(mouseX,mouseY,50,50);

}
