// aula MTAD PAD 2014/03/08
// Joao Martinho Moura
//
//  exemplo de visualizacao de informacao
//  definicao da classe Pais

class Pais { 

  String nome;
  int populacao;
  int area;
  int posX;
  int posY;

  Pais (String n, int p, int a, int x, int y) {
    nome = n;
    populacao = p;
    area = a;
    posX = x;
    posY = y;
  }

  void desenha() {
    noStroke();
    
    // area 
    fill(180, 140, 90, 200);
    ellipse(posX, posY, area/2.8, area/2.8);
    
    // populacao 
    fill(120, 40, 30, 200);
    ellipse(posX, posY, populacao, populacao);
    
    // legenda
    fill(120);
    text(nome, posX-30, posY+160);

    // interacao com o mouse over
    if (dist(mouseX, mouseY, posX, posY)<70) {
      stroke(0, 100);
      line(posX, posY, posX, posY-160); 
      fill(0);
      text(nome + "\nArea: " + area + " km2\nPopulacao: " + populacao + " M", posX, posY-200);
    }
  }
}

