import 'package:mobx/mobx.dart';

part 'churrascometro_store.g.dart';

class ChurrascometroStore = ChurrascometroStoreBase with _$ChurrascometroStore;

abstract class ChurrascometroStoreBase with Store {
  /// Uma classe store para gerenciar o estado e os cálculos relacionados a um evento de churrasco.
  ///
  /// Esta classe usa MobX para gerenciamento de estado e fornece propriedades computadas
  /// para calcular as quantidades necessárias de vários itens com base no número de
  /// adultos, crianças, bebedores e a duração do evento.
  ///
  /// Propriedades:
  /// - `isInloading`: Um booleano indicando se os dados estão sendo carregados atualmente.
  /// - `adultos`: O número de adultos presentes no evento.
  /// - `criancas`: O número de crianças presentes no evento.
  /// - `bebem`: O número de pessoas que irão beber álcool.
  /// - `duracao`: A duração do evento em horas.
  ///
  /// Propriedades Computadas:
  /// - `fatorDuracao`: Um fator que aumenta as quantidades se a duração do evento for superior a 6 horas.
  /// - `criancasEquivalentes`: O número equivalente de adultos para o número dado de crianças (crianças contam como metade de um adulto).
  /// - `carne`: A quantidade total de carne necessária em gramas.
  /// - `linguica`: A quantidade total de linguiça necessária em gramas.
  /// - `paoDeAlho`: A quantidade total de pão de alho necessária em gramas.
  /// - `cerveja`: A quantidade total de cerveja necessária em mililitros.
  /// - `refrigerante`: A quantidade total de refrigerante necessária em mililitros.
  /// - `fatorDuracao`: 1.5 se a duração do evento for superior a 6 horas, caso contrário, 1.0.
  /// - `criancasEquivalentes`: Número de crianças multiplicado por 0.5.
  /// - `carne`: (Número de adultos + crianças equivalentes) * 400 * fator de duração.
  /// - `linguica`: (Número de adultos + crianças equivalentes) * 200 * fator de duração.
  /// - `paoDeAlho`: (Número de adultos + crianças equivalentes) * 200 * fator de duração.
  /// - `cerveja`: Número de bebedores * 1200 * fator de duração.
  /// - `refrigerante`: (Número de adultos + crianças equivalentes) * 1000 * fator de duração.
  ///
  /// Regras:
  /// - A duração do evento influencia a quantidade de itens necessários.
  /// - Crianças contam como metade de um adulto para as quantidades.
  /// - As quantidades são calculadas em gramas para carne, linguiça e pão de alho.
  /// - As quantidades são calculadas em mililitros para cerveja e refrigerante.
  @observable
  bool isInloading = false;

  @observable
  int adultos = 0;

  @observable
  int criancas = 0;

  @observable
  int bebem = 0;

  @observable
  int duracao = 0;

  @computed
  double get fatorDuracao => duracao > 6 ? 1.5 : 1.0;

  @computed
  double get criancasEquivalentes => criancas * 0.5;

  @computed
  double get carne => (adultos + criancasEquivalentes) * 400 * fatorDuracao;

  @computed
  double get linguica => (adultos + criancasEquivalentes) * 200 * fatorDuracao;

  @computed
  double get paoDeAlho => (adultos + criancasEquivalentes) * 200 * fatorDuracao;

  @computed
  double get cerveja => bebem * 1200 * fatorDuracao;

  @computed
  double get refrigerante =>
      (adultos + criancasEquivalentes) * 1000 * fatorDuracao;

//Regras para adicionar destilados
  @observable
  bool useCocktail = false;
}
