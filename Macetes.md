# PRINTAR VALOR COM NÚMERO LIMITADO DE CASAS DECIMÁIS:
double result = 1.3556;
1 PASSO - transformas o número em uma string e adicionar a limitação de casas decimáis 
String resulArrendondado = result.toStringAsFixed(2); //parz ter apenas 2 casas decimáis
print(resultArredondado);
OU
Usar diretamente no print sem usar variável
print (result.toStringAsFixed(2));
-----------------------------------------------------------------------------
# USANDO FUNÇOES MATEMÁTICAS
PASSO 1:
import 'dart:math';
FUNÇÕES
  // pow = expoente; modelo = pow(variável, expoente)// 
  // sqrt = raiz quadrada ; modelo = sqrt(variável)//
-----------------------------------------------------------------------------
#CONVERTER UJMA STRING EM UM DOUBLE OU INTEIRO
double.parse()
int.parse()
-----------------------------------------------------------------------------
# FUNCIONALIDADES DO ARRAY 
- Tamanho do array 
 "variável".length
 - Primeiro item 
 "variável".first 
 - Último ítem 
 "varável'.last
 - Verificar se está vazio 
 "variável".isEmpty

# MANIPULAÇÃO DO ARRAY 
- Adicionar um ítem ao final 
.add(ítem)
.addAll
- Adiconar um ítem em um local específico 
.insert(posição, ítem)
.insertAll
- Deletar 
.remove(ítem)
.removeAt(posição)
.removeLast() - remover último ítem
.removeRange(de, até) - remover intervalo 
.clear - limpar 
--------------------------------------------------------------------------------
#ENTRADA DE DADOS 
type? valor = type.parse(stdin.readLineSync()!);
- type = tipo de variável.
- "?" = usado para permitir que uma variável possa ser inicializada nula.
- "!' = utilizado para permitir usar uma ferramenta de manipulação de String em uma variável de outro tipo.------------------------------------------------------------------------------------
# FUNÇÃO
-Declaração:
[tipo] nomeDaFunção(argumento){
  //código
}
-Com retorno:
String função (String valor){
  return 'valor';
}
-Função anônima/ lambda:
([tipo] param){
  //código
}