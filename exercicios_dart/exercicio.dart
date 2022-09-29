void main(List<String> args) {
  int a = 3;
  double b = 3.1;
  var c = "Voce é muito legal";
  print(c is String);
  bool estaChovendo = true;
  bool estaFrio = false;
  print(estaChovendo || estaFrio);
  var nomes = ['Ana', 'Bia', 'Carlos'];
  nomes.add('Daniel');
  nomes.add('Daniel');
  print(nomes.length);
  print(nomes.elementAt(0));
  print(nomes[4]);

  var conjunto = {0, 1, 2, 3, 4, 4, 4};
  print(conjunto.length);
  print(conjunto);
  print(conjunto is Set);
  print(conjunto.elementAt(0));

  Map<String, double> notasDosAlunos = {
    'Ana': 9.7,
    'Bia': 9.2,
    'Carlos': 7.8,
  };

  for (var chave in notasDosAlunos.keys) {
    print('chave = $chave');
  }

  for (var registro in notasDosAlunos.entries) {
    print('Chave ${registro.key} Valor: ${registro.value}');
  }

  dynamic x = 'Teste';
  x = 123;
  x = true;

  var z = 3;
  z = 4;
  print('o valor da soma é : ${soma(5, 3)}');
  final r = exec(2, 3, (a, b) {
    a - b;
  });
  print('o resultado é : $r');

  Produto p1 = new Produto();
  p1.nome = 'Lapis';
  p1.preco = 4.99;

  Produto p2 = Produto();
  p2.nome = 'Caneta';
  p2.preco = 5.11;
}

soma(a, b) {
  return a + b;
}

exec(int a, int b, Function(int, int) fn) {
  return fn(a, b);
}

class Produto {
  String? nome;
  double? preco;
}
