// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi_calculation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BmiCalculationController on _BmiCalculationController, Store {
  Computed<dynamic> _$heightComputed;

  @override
  dynamic get height =>
      (_$heightComputed ??= Computed<dynamic>(() => super.height,
              name: '_BmiCalculationController.height'))
          .value;
  Computed<dynamic> _$bodyMassComputed;

  @override
  dynamic get bodyMass =>
      (_$bodyMassComputed ??= Computed<dynamic>(() => super.bodyMass,
              name: '_BmiCalculationController.bodyMass'))
          .value;
  Computed<dynamic> _$imcComputed;

  @override
  dynamic get imc => (_$imcComputed ??= Computed<dynamic>(() => super.imc,
          name: '_BmiCalculationController.imc'))
      .value;

  final _$_bodyMassAtom = Atom(name: '_BmiCalculationController._bodyMass');

  @override
  double get _bodyMass {
    _$_bodyMassAtom.reportRead();
    return super._bodyMass;
  }

  @override
  set _bodyMass(double value) {
    _$_bodyMassAtom.reportWrite(value, super._bodyMass, () {
      super._bodyMass = value;
    });
  }

  final _$_heightAtom = Atom(name: '_BmiCalculationController._height');

  @override
  double get _height {
    _$_heightAtom.reportRead();
    return super._height;
  }

  @override
  set _height(double value) {
    _$_heightAtom.reportWrite(value, super._height, () {
      super._height = value;
    });
  }

  @override
  String toString() {
    return '''
height: ${height},
bodyMass: ${bodyMass},
imc: ${imc}
    ''';
  }
}
