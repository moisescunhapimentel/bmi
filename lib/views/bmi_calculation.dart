import 'package:bmi/controllers/bmi_calculation_controller.dart';
import 'package:bmi/modals/bmi_table.dart';
import 'package:bmi/views/widgets/constants.dart';
import 'package:bmi/views/widgets/custom_app_bar.dart';
import 'package:bmi/views/widgets/custom_elevated_button.dart';
import 'package:bmi/views/widgets/size_config.dart';
import 'package:flutter/material.dart';
import 'package:bmi/views/widgets/custom_text_field.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BMIView extends StatefulWidget {
  @override
  _BMIViewState createState() => _BMIViewState();
}

class _BMIViewState extends State<BMIView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  BmiCalculationController bmiCalculationController =
      BmiCalculationController();

  TextEditingController heightController = TextEditingController();
  TextEditingController bodyMassController = TextEditingController();

  BMITable bmiTable = BMITable();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: CustomAppBar.appBar(
                height: SizeConfig.defaultSize * 6,
                color: kPrimaryColor,
                text: 'Body Mass Index',
                fontSize: SizeConfig.defaultSize * 2,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * 2,
                  left: SizeConfig.defaultSize * 2,
                  right: SizeConfig.defaultSize * 2),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField.textFormField(
                      hintText: 'Body Mass',
                      context: context,
                      color: kPrimaryColor,
                      fontSize: SizeConfig.defaultSize * 2,
                      sufixText: 'kg',
                      controller: bodyMassController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Fill this field';
                        } else {
                          double height = double.tryParse(value);
                          if (height == null) {
                            return 'Invalid number';
                          }
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize * 1.5,
                    ),
                    CustomTextField.textFormField(
                        hintText: 'Height',
                        context: context,
                        color: kPrimaryColor,
                        fontSize: SizeConfig.defaultSize * 2,
                        sufixText: 'm',
                        controller: heightController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Fill this field';
                          } else {
                            double height = double.tryParse(value);
                            if (height == null) {
                              return 'Invalid number';
                            }
                          }
                          return null;
                        }),
                    SizedBox(
                      height: SizeConfig.defaultSize * 2,
                    ),
                    CustomElevatedButton.elevatedButtonText(
                        backgroundColor: kPrimaryColor,
                        text: 'Calculate',
                        fontSize: SizeConfig.defaultSize * 1.8,
                        function: () {
                          FocusScope.of(context).unfocus();
                          if (_formKey.currentState.validate()) {
                            bmiCalculationController.bodyMass =
                                double.parse(bodyMassController.text);
                            bmiCalculationController.height =
                                double.parse(heightController.text);
                          }
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize * 1.5,
            ),
            Observer(
              builder: (_) {
                return Visibility(
                  visible: bmiCalculationController.imc != 0.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        double.parse(bmiCalculationController.imc.toString())
                            .toStringAsFixed(2),
                        style: TextStyle(fontSize: SizeConfig.defaultSize * 5),
                      ),
                      Text(
                        'Category:',
                        style: TextStyle(
                          fontSize: SizeConfig.defaultSize * 2,
                        ),
                      ),
                      Text(
                        bmiTable.situation(bmiCalculationController.imc),
                        style: TextStyle(
                          color: colorCategory(
                              bmiTable.situation(bmiCalculationController.imc)),
                          fontSize: SizeConfig.defaultSize * 2,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Color colorCategory(String category) {
    if ('Thinness' == category)
      return Colors.red;
    else if ('Healthy' == category)
      return Colors.green;
    else if ('Overweight' == category)
      return Colors.orange;
    else if ('Obesity Grade I' == category)
      return Colors.red.withOpacity(0.6);
    else if ('Severe Obsession Grade II' == category)
      return Colors.red.withOpacity(0.8);
    else
      return Colors.red;
  }
}
