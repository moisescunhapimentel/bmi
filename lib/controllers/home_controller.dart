import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  bool calculationClick = false;

  @observable
  bool tableClick = false;

  @action
  void toggleCalculation() => calculationClick = !calculationClick;

  @action
  void toggleTable() => tableClick = !tableClick;

  @computed
  get click => calculationClick || tableClick;
}
