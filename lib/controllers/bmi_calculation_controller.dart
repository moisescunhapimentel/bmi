import 'package:mobx/mobx.dart';

part 'bmi_calculation_controller.g.dart';

class BmiCalculationController = _BmiCalculationController
    with _$BmiCalculationController;

abstract class _BmiCalculationController with Store {
  @observable
  double _bodyMass = 0.0;

  @observable
  double _height = 0.0;

  @computed
  get height => _height;

  @computed
  get bodyMass => _bodyMass;

  set height(value) => _height = value;

  set bodyMass(value) => _bodyMass = value;

  @computed
  get imc => _height != 0.0 && _bodyMass != 0.0
      ? _bodyMass / (_height * _height)
      : 0.0;
}
