import 'package:bmi/modals/bmi_table.dart';
import 'package:bmi/views/widgets/constants.dart';
import 'package:bmi/views/widgets/size_config.dart';
import 'package:flutter/material.dart';

class TableView extends StatefulWidget {
  @override
  _TableViewState createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  BMITable bmiTable = BMITable();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(
                    bottom: SizeConfig.defaultSize * 2,
                    top: SizeConfig.defaultSize),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.defaultSize),
                        width: SizeConfig.halfHorizontal,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Category',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize * 1.5,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.defaultSize),
                        width: SizeConfig.halfHorizontal,
                        child: Text(
                          'BMI',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize * 1.5,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: bmiTable.keys.length,
                    itemBuilder: (
                      context,
                      item,
                    ) {
                      List<String> keys = bmiTable.keys.toList();
                      return Container(
                        color: item % 2 == 0
                            ? kPrimaryColor.withOpacity(0.3)
                            : kPrimaryColor.withOpacity(0.7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.defaultSize,
                                    vertical: SizeConfig.defaultSize),
                                width: SizeConfig.halfHorizontal,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  keys[item],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: SizeConfig.defaultSize * 1.5,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.defaultSize),
                                width: SizeConfig.halfHorizontal,
                                child: Text(
                                  item == 0
                                      ? '< ' +
                                          double.parse(
                                                  (bmiTable.imc[keys[item]] +
                                                          0.01)
                                                      .toString())
                                              .toStringAsFixed(1)
                                      : item == keys.length - 1
                                          ? '> 40'
                                          : '>= ' +
                                              double.parse((bmiTable
                                                          .imc[keys[item - 1]])
                                                      .toString())
                                                  .toStringAsFixed(1) +
                                              ' and <= ' +
                                              double.parse(
                                                      (bmiTable.imc[keys[item]])
                                                          .toString())
                                                  .toStringAsFixed(1),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: SizeConfig.defaultSize * 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
