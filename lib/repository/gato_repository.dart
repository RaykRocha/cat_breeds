import 'package:nac_gatos/models/gato_model.dart';
import 'database.dart';

class GatoRepository {
  Future<List<GatoModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<GatoModel> gatos = new List<GatoModel>();

    if (db.created) {
      gatos = new List<GatoModel>();
      gatos.add(new GatoModel(
          id: 1,
          nome: 'Burmilla',
          origem: 'Reino Unido',
          tamanho: 'Médio',
          pesoMedio: '5 - 6 Kg',
          expcVida: '10 - 15 anos',
          info: 'Uma das raças de gatos mais especiais, considerada uma raça bastante exclusiva devido ao pequeno número de espécimes existentes em todo o mundo. Estamos falando do gato Burmilla, originário do Reino Unido, uma raça que surgiu espontaneamente, sendo também bastante recente. Por tudo isso, esse gato ainda é muito desconhecido para muitas pessoas.'));
      gatos.add(new GatoModel(
          id: 2,
          nome: 'Pixie-bob',
          origem: 'Estados Unidos',
          tamanho: 'Médio',
          pesoMedio: '5 - 6 Kg',
          expcVida: '18 - 20 anos',
          info: 'De aparência semelhante ao Bobcat, já que ambos têm uma cauda caracteristicamente curta, os gatos da raça Pixie-bob chegaram para ficar. Nascidos no seio do Novo Mundo, esses peculiares gatinhos americanos são chamados por muitos de "gatos-cachorros", devido à sua personalidade afável e incrível fidelidade. Com um aparecimento relativamente recente e origem incerta, o que sabemos sobre o Pixie-bob é que eles conquistaram o amor e a admiração de todos aqueles que puderam passar algum tempo com eles'));
      gatos.add(new GatoModel(
          id: 3,
          nome: 'Sphynx',
          origem: 'Quênia',
          tamanho: 'Médio',
          pesoMedio: '5 - 6 Kg',
          expcVida: '10 - 15 anos',
          info: 'O gato Sphynx é um gato realmente único, foi o primeiro a ser aceite como raça sem pelo ou sem pelagem aparente e o que é verdade é que geram agrado e desagrado na sociedade humana. Muitos criadores sugerem que provém da raça Devon Rex uma vez que compartilham caraterísticas muito idênticas. Apareceram de forma natural ao longo da história uma vez que a sua falta de pelo é devido a uma mutação, um processo comum na evolução de qualquer espécie. Foram os criadores do Canadá, que nos anos 60 decidiram definir e manter as caraterísticas dos gatos que não pareciam ter pelo.'));
      gatos.add(new GatoModel(
          id: 4,
          nome: 'Devon Rex',
          origem: 'Reino Unido',
          tamanho: 'Pequeno',
          pesoMedio: '3 - 5 Kg',
          expcVida: '10 - 15 anos',
          info:
              'Os gatos Devon Rex são lindos gatinhos que adoram passar horas e horas recebendo carinho e brincadeiras, são considerados gatos-cachorros porque seguem os tutores onde eles vão, as qualidades e características são conhecidas por todos os amantes de raças de gato-cachorro.'));
      gatos.add(new GatoModel(
          id: 5,
          nome: 'Turkish Van',
          origem: 'Turquia',
          tamanho: 'Grande',
          pesoMedio: '6 - 8 Kg',
          expcVida: '15 - 18 anos',
          info:
              'De pelagem macia e felpuda, dono de um olhar cativante e de uma personalidade muito sociável, o gato Turkish Van, também conhecido como Van Turco, Tuco Van ou até mesmo como gato Turco, é uma raça única e muito cobiçada. Se você estiver pensando em adotar um Turkish Van ou se já tiver um animalzinho desses em casa, essa ficha do PeritoAnimal te ajudará a saber tudo o que você precisa sobre essa raça de gato, desde a origem, personalidade e características físicas até quais são os cuidados que se devem ter com ele. Por isso, continue lendo esse texto para saber todas as informações sobre o gato Turkish Van, que com certeza te conquistará.'));
      gatos.add(new GatoModel(
          id: 6,
          nome: 'Korat',
          origem: 'Tailândia',
          tamanho: 'Pequeno',
          pesoMedio: '3 - 5 Kg',
          expcVida: '15 - 18 anos',
          info:
              'Ironicamente, uma das raças de gato mais antigas do mundo demorou séculos para chegar em grandes cidades e capitais da Europa e dos Estados Unidos. O gato Korat, originário da Tailândia, é considerado símbolo de boa sorte. Aqui, no PeritoAnimal, te contaremos tudo sobre o gato Korat, dono de um olhar penetrante, de uma personalidade dócil e de aspecto adorável.'));
      gatos.add(new GatoModel(
          id: 7,
          nome: 'Savannah',
          origem: 'Estados Unidos',
          tamanho: 'Grande',
          pesoMedio: '8 - 10 Kg',
          expcVida: '10 - 15 anos',
          info:
              'Com uma aparência exótica e única, o gato Savannah parece um leopardo em miniatura. Mas, não se engane, é um felino doméstico que se adapta perfeitamente a convivência dentro de casa, além disso, é um gato ativo, sociável e carinhoso. Nessa ficha do PeritoAnimal vamos explicar tudo sobre o gato Savannah, a origem, os cuidados necessários e também fotografias dessa linda raça de gato, confira!'));
      gatos.add(new GatoModel(
          id: 8,
          nome: 'Chartreux',
          origem: 'França',
          tamanho: 'Grande',
          pesoMedio: '6 - 8 Kg',
          expcVida: '15 - 18 anos',
          info:
              'De origem incerta, mas sem dúvida uma das raças de gato mais antigas do mundo, o gato Chartreux compartilhou sua história através dos séculos com personagens importantes, como o general Charles de Gaulle e os monges templários do principal mosteiro da França. Independente da origem, os felinos da raça de gato Chartreux são indiscutivelmente adoráveis, de caráter dócil e carinhoso e que conquistam o coração não só dos seus cuidadores como também de todos que conhece.'));
      gatos.add(new GatoModel(
          id: 9,
          nome: 'Snowshoe',
          origem: 'Estados Unidos',
          tamanho: 'Médio',
          pesoMedio: '3 - 5 Kg',
          expcVida: '15 - 18 anos',
          info:
              'Fruto de cruzamentos entre o gato Siamês e American Shorthair, ou gato de Pelo Curto Americano, o resultado foi uma raça de gato realmente elegante, o gato Snowhoe, que tem esse nome devido às suas patinhas brancas que parecem estar cobertas de neve. Isso junto com seus olhos azuis e a marca de "V" invertido são as características que mais se destacam nessa raça de felinos.'));
      gatos.add(new GatoModel(
          id: 10,
          nome: 'Manx',
          origem: 'Reino Unido',
          tamanho: 'Médio',
          pesoMedio: '3 - 5 Kg',
          expcVida: '18 - 20 anos',
          info:
              'O gato Manx, também conhecido como gato manês ou gato sem rabo, é um dos gatos de raça mais peculiares devido à cauda e à aparência física em geral. Dono de um olhar terno, essa raça felina ganhou o coração de muitas pessoas pelo seu caráter equilibrado e carinhoso. No entanto, para que o animal seja feliz é preciso conhecer todas as características do gato Manx, os cuidados básicos, temperamento e possíveis problemas de saúde.'));
    }
    return new Future.value(gatos);
  }
}
