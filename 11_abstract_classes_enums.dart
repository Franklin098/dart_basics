void main() {
  final windPlant = WindPlant(initialEnergy: 1000);

  chargePhone(windPlant);

  final nuclear = NuclearPlant(remainingEnergy: 20000);

  chargePhone(nuclear);

  print(windPlant.remainingEnergy);
}

// This method will work for any kind of energy plant
double chargePhone(EnergyPlant plant) {
  if (plant.remainingEnergy < 10) {
    throw Exception('Not enough energy');
  }
  plant.consumeEnergy(10);
  return plant.remainingEnergy;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double remainingEnergy;
  final PlantType type;

  EnergyPlant({required this.remainingEnergy, required this.type});

  void consumeEnergy(double amount);
}

// when using "extends" we Inherit
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(remainingEnergy: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    this.remainingEnergy -= amount;
  }
}

// when using "implement" we just agree on a contract, we don't inherit everything
class NuclearPlant implements EnergyPlant {
  @override
  double remainingEnergy;

  @override
  PlantType type = PlantType.nuclear;

  NuclearPlant({required this.remainingEnergy});

  @override
  void consumeEnergy(double amount) {
    remainingEnergy -= amount * 0.5;
  }
}
