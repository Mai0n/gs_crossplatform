import '../model/region.dart';

class RegionRepository {
  static List<Region> getRegions() {
    return const [
      Region(
        name: 'Amazônia Legal',
        satellite: 'Sentinel-2',
        risk: 'Alto',
        temperature: 32,
        humidity: 61,
        description:
            'Área monitorada para identificar focos de queimadas, desmatamento e alterações climáticas a partir de dados orbitais.',
      ),
      Region(
        name: 'Pantanal',
        satellite: 'Jason-CS',
        risk: 'Médio',
        temperature: 34,
        humidity: 48,
        description:
            'Região sensível a períodos de seca e queimadas. O acompanhamento por satélite auxilia na prevenção de danos ambientais.',
      ),
      Region(
        name: 'Litoral Paulista',
        satellite: 'Jason-3',
        risk: 'Baixo',
        temperature: 27,
        humidity: 72,
        description:
            'Faixa costeira acompanhada para análise de elevação do nível do mar, erosão e riscos a comunidades litorâneas.',
      ),
      Region(
        name: 'Semiárido Nordestino',
        satellite: 'Landsat 9',
        risk: 'Alto',
        temperature: 36,
        humidity: 33,
        description:
            'Região monitorada para apoiar decisões sobre seca, agricultura sustentável e uso inteligente dos recursos hídricos.',
      ),
      Region(
        name: 'Sul do Brasil',
        satellite: 'GOES-16',
        risk: 'Médio',
        temperature: 24,
        humidity: 68,
        description:
            'Área acompanhada para previsão de tempestades, variações climáticas intensas e eventos extremos.',
      ),
    ];
  }
}