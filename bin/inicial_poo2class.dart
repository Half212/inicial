import 'inicial_poo3heran.dart';

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "a sua $nome foi coilhida a $diasDesdeColheita dias, e precisa de"
            "$diasParaMadura para poder comer. Ela está madura? $isMadura");
  }

  fazerSuco(){
    print('voce fez um otimo suco de $nome');
  }
  @override
  separarIngredientes() {
    print("catar a(o) $nome");
  }
  @override
  fazerMassa() {
    print("misturar a(o) $nome com farinha, açucar, ovos...");
  }
  @override
  assar() {
    print("colocar no forno");
  }
  
}

