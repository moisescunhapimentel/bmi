import 'package:bmi/controllers/home_controller.dart';
import 'package:bmi/views/bmi_calculation.dart';
import 'package:bmi/views/table_view.dart';
import 'package:bmi/views/widgets/constants.dart';
import 'package:bmi/views/widgets/custom_route.dart';
import 'package:bmi/views/widgets/size_config.dart';
import 'package:flutter/material.dart';
import 'package:bmi/views/widgets/custom_elevated_button.dart';
import 'package:mobx/mobx.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController homeController = HomeController();
  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    disposer = reaction((_) => homeController.click, (value) {
      if (homeController.calculationClick) {
        homeController.toggleCalculation();
        Navigator.push(
            context,
            CustomRoute.createRoute(
                page: BMIView(), begin: Offset(0, -1), end: Offset.zero));
      } else if (homeController.tableClick) {
        homeController.toggleTable();
        Navigator.push(context, CustomRoute.createRoute(page: TableView()));
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize),
            width: SizeConfig.screenWidth,
            child: Text(
              'Welcome to the BMI calculator',
              style: TextStyle(
                  fontSize: SizeConfig.defaultSize * 4, fontFamily: 'Poppins'),
              textAlign: TextAlign.start,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: CustomElevatedButton.elevatedButtonText(
                    backgroundColor: kPrimaryColor,
                    text: 'BMI Calculation',
                    function: homeController.toggleCalculation),
              ),
              Center(
                child: CustomElevatedButton.elevatedButtonText(
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(color: kSecondaryColor),
                    side: BorderSide(color: kSecondaryColor),
                    text: 'Dough Table',
                    function: homeController.toggleTable),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
