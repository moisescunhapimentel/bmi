// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  Computed<dynamic> _$clickComputed;

  @override
  dynamic get click => (_$clickComputed ??=
          Computed<dynamic>(() => super.click, name: '_HomeController.click'))
      .value;

  final _$calculationClickAtom = Atom(name: '_HomeController.calculationClick');

  @override
  bool get calculationClick {
    _$calculationClickAtom.reportRead();
    return super.calculationClick;
  }

  @override
  set calculationClick(bool value) {
    _$calculationClickAtom.reportWrite(value, super.calculationClick, () {
      super.calculationClick = value;
    });
  }

  final _$tableClickAtom = Atom(name: '_HomeController.tableClick');

  @override
  bool get tableClick {
    _$tableClickAtom.reportRead();
    return super.tableClick;
  }

  @override
  set tableClick(bool value) {
    _$tableClickAtom.reportWrite(value, super.tableClick, () {
      super.tableClick = value;
    });
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  void toggleCalculation() {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.toggleCalculation');
    try {
      return super.toggleCalculation();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleTable() {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.toggleTable');
    try {
      return super.toggleTable();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
calculationClick: ${calculationClick},
tableClick: ${tableClick},
click: ${click}
    ''';
  }
}
