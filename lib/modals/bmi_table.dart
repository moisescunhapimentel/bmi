class BMITable {
  Map<String, double> _imc = {
    'Thinness': 18.4,
    'Healthy': 24.9,
    'Overweight': 29.9,
    'Obesity Grade I': 34.9,
    'Severe Obsession Grade II': 39.9,
    'Morbid Obsession Grade III': double.infinity,
  };

  String situation(double imcValue) {
    for (int i = 0; i < _imc.length; i++) {
      if (imcValue <= values[i]) return keys[i];
    }
    return null;
  }

  get keys => _imc.keys.toList();

  get values => _imc.values.toList();

  get imc => _imc;
}
