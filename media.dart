void main() {
  String? nome = "Guilherme";
  double notaP1 = 6, 
  notaProjeto = 5, 
  pontListas = 0, 
  media = 0; 
  
  media += notaP1 * 0.3 + pontListas + notaProjeto * 0.5;
  
  if (media >= 6){
    print("O aluno " + nome + " foi aprovado com média " + media.toString() +".");
  }else {
    print("O aluno " + nome + " foi reprovado com média " + media.toString() +".");
  }
  
}