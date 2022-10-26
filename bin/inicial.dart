void main() {
  //manipulando variaves
  int idade = 22;
  double altura = 1.70;
  bool gamer = true;
  const String nome = "Aquiles Peixoto Leite Filho";
  String apelido = "Half212";
  bool maiorDeidade;
  int energia = 100;

  // lidando com condicoes if e else
  if(idade>=18) {
    maiorDeidade = true;
  }
  else{
    maiorDeidade = false;}
//lidando com condiçoes for
  for (int i=1; i<=5; i++){
    print('conclui $i voltas');
  }
// lidando com condicoes while
  while(energia>0){
  print('Mais uma Repeticao');
    energia = energia -10;
  }
  do{
    print ("mais uma repeticao");
    energia = energia -10;
  }while(energia> 0);

  List<dynamic> person =[idade,altura,gamer,nome,apelido,maiorDeidade];

  String frase = 'Eu sou ${person[4]} \n'
      'mas meu nome completo é: ${person[3]} \n '
      'eu me considero gamer? ${person[2]}. \n '
      'Eu tenho ${person[1]} metros de altura e \n '
      '${person[0]} anos de idade \n'
      'sou maior de idade ? ${person[5]}';
  //manipulando listas
  List<String> listadnome = ['ruy','allan','naty','thais'];


  print(frase);

}