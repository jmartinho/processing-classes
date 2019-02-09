/*
  João Martinho Moura
  Mestrado em Tecnologia e Arte Digital. Universidade do Minho
  
  Aula 4 - 20131130

  Processing
    Arrays
*/

// PAD_Aula-201311130_jmartinho
// exemplo geracao de frase aleatoria com recurso a ARRAYS

String[] nomes = new String[10];  // declaracao do nosso array de nomes com 10 posicoes
String[] verbos = new String[4];  // declaracao do nosso array de verbos com 4 posicoes

void setup() {
  size(500, 300);
  frameRate(1);    // vamos colocar um frameRate baixo (1 frame porsegundo)
  smooth();
  nomes[0] = "a gisela";
  nomes[1] = "o ricardo";
  nomes[2] = "o antonio";
  nomes[3] = "a doris";
  nomes[4] = "a elisabeth";
  nomes[5] = "a isabel";
  nomes[6] = "o hugo";
  nomes[7] = "o nuno";
  nomes[8] = "o daniel";
  nomes[9] = "o bruno";

  verbos[0] = "salta";
  verbos[1] = "come";
  verbos[2] = "danca";
  verbos[3] = "dorme";
}

void draw() {
  background(255);

  String texto = " ";  // vamos declarar uma String chamada texto, que vai guardar a nossa frase

  int numeroAleatorio;  // variavel auxiliar para guardar numeros aleatorios

  numeroAleatorio = (int) random(0, 10);      // sorteio 1 // vamos sortear um indice entre 0 e 9
  texto = texto + nomes[numeroAleatorio] + " ";  // adicionamos o nome sorteado ao nosso texto

  numeroAleatorio = (int) random(0, 4);      // sortio 2  // vamos sortear um indice entre 0 e 4
  texto = texto + verbos[numeroAleatorio]  + " ";  // adicionamos o verbo sorteado ao nosso texto

  fill(0);  // a cor a que vamos colocar o texto
  text(texto, 30, 50);    // vamos imprimir o texto no ecran
}
