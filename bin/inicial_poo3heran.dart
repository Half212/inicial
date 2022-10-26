import 'inicial_poo2class.dart';

class Alimento {
  //class super
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  printAlimento() {
    print("este(a) $nome pesa $peso g e é $cor");
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  cozinhar() {
    if (isPrecisaCozinhar) {
      print("pronto, o $nome está cozinhando");
    } else {
      print('nem precisa cozinhar');
    }
  }
  @override
  assar() {
    // colocar mais tempo
  }
  @override
  fazerMassa() {
    // fazer uma papa com o legume
  }
  @override
  separarIngredientes() {
    // verifica se o alimento esta cru
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita,this.nivelAzedo, {int ?isMadura})
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  existeRefri(bool existe){
    if(existe){
      print('existe refri de $nome');
    }else{
      print('Nao existe refri de $nome');
    }
  }
}

class Nuts extends Fruta {
  double oleosidade;
  Nuts(String nome, double peso, String cor,String sabor, int diasDesdeColheita,this.oleosidade)
      :super (nome,peso,cor,sabor,diasDesdeColheita);
  @override
  fazerMassa() {
    print('tirar a casca');
    return super.fazerMassa();
  }

}

abstract class Bolo{
  separarIngredientes();
  fazerMassa();
  assar();

}
