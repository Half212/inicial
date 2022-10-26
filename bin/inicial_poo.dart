//nocao de funcao e escopo
import 'inicial_poo2class.dart';
import 'inicial_poo3heran.dart';
void main(){
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "verde e amarelo";
  String sabor = " doce e citrico";
  int diasDesdeColheita = 40;
  bool isMadura = funcIsMadura(diasDesdeColheita);


  int quantosDias =funcQuantosDiasMadura(diasDesdeColheita);


  Fruta uvinha = Fruta('uva' ,40,"roxo", "docinho", 20);
  Legumes mandioca = Legumes('mandioca', 800, "marrom", true);
  Nuts macadamia = Nuts("Macadamia", 30,"Branco Amarelado","doce",20, 40);
  Citricas limao = Citricas("limao",90,"verde", 'azedo', 5, 9);

  uvinha.printAlimento();
  mandioca.printAlimento();
  macadamia.printAlimento();
  limao.printAlimento();

  mandioca.cozinhar();
  limao.fazerSuco();
  macadamia.fazerMassa();

}

funcQuantosDiasMadura(int dias){
    int diasParaMadura = 30;
    int quantosDiasFaltam = dias - diasParaMadura;
    return quantosDiasFaltam;
}

/** 1- posicionais obrigatorios
   2 - nomeados opcionais
   3 - paramentros com 'padroes'
   4 - modificador 'required'*/
                   //1                //2           //3
mostrarMadura(String nome,int dias, {String cor = "sem cor"}){
if (dias>= 30){
  print("a $nome esta madura");
}else{
  print("a $nome nao esta madura");
}
if (cor != null){
  print("a $nome e $cor");
}

}

bool funcIsMadura(int dias){
  if (dias >= 30){
    return true;
  }else{
    return false;
  }
}
