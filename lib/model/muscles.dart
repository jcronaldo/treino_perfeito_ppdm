class Muscles {
  String exercicio;
  String grupo;
  String subgrupo;
  String execucao;

  Muscles(
    this.exercicio,
    this.grupo,
    this.subgrupo,
    this.execucao,
  );

  //
  // Converter um objeto JSON em um objeto
  // da classe Pais
  //
  factory Muscles.fromJson(Map<String,dynamic> j){
    return Muscles(
      j['exercicio'],
      j['grupo'],
      j['subgrupo'],
      j['execucao']
    );
  }
}