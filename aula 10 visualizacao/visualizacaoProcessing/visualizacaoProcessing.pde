/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 10 - 2014/03/08

  Processing
    exemplo de visualizacao de informacao
*/



Pais[] paises; // declaramos um array do objecto pais

int numeroPaises;

void setup() {
  size(1024, 600);

  String[] linhas = loadStrings("paises.txt");  // vamos ler o ficheiro de texto e guardar num array de Strings (cada indice tem uma linha do texto)

  numeroPaises = linhas.length; // quantas linhas temos
  println(numeroPaises);

  paises = new Pais[numeroPaises]; //inicializamos o nosso array ide paises ndicando o tamanho



  for (int i=0; i<numeroPaises; i++) { // percorremos as linhas

    String linha = linhas[i];   /// //obtemos os dados de uma linha. Ex: "Portugal,10,91"

    String[] elementos = split(linha, ","); // dividimos a string pelo delimitador

    String nome = elementos[0]; // obtemos o nome do pais
    int populacao = parseInt(elementos[1]); // obtemos a populacao
    int area = parseInt(elementos[2]); // obtemos a area

    println (nome + "  " + populacao + "  " + area);

    Pais P = new Pais(nome, populacao, area, (i+1) * 140, height/2  ); // criamos um objecto temporario do tipo Pais com os dados recolhidos

    paises[i] = P; // adicionamos o objecto P (do tipo Pais) ao nosso array de paises
  }
}


void draw() {
  background(255);

  for (int i=0;i<numeroPaises;i++) { // percorremos o array de paies
    paises[i].desenha();  // desenhamos o pais
  }
}
