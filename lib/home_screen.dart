import 'package:calculadora_imc/info_screen.dart';
import 'package:calculadora_imc/gender_widget.dart';
import 'package:calculadora_imc/result.dart';
import 'package:flutter/material.dart';
import 'package:calculadora_imc/height_weight_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _gender = 0;
  int _height = 170;
  int _weight = 60;
  double _imc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              "Calculadora do IMC",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
                width: 119,
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GenderWidget(
                onChange: (genderVal) {
                  _gender = genderVal;
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeightWeightWidget(
                      onChange: (weightVal) {
                        _weight = weightVal;
                      },
                      title: "Seu peso em (kg)",
                      initValue: 60,
                      min: 0,
                      max: 200),
                  HeightWeightWidget(
                      onChange: (heightVal) {
                        _height = heightVal;
                      },
                      title: "Sua altura em (cm)",
                      initValue: 170,
                      min: 0,
                      max: 240,
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: (){

                  calculateImc();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsScreen(
                        imcResult: _imc.toStringAsFixed(1),
                        resultText: getResult(),
                      ),
                    )
                  );
                },
                child: Container(
                  child: Center(
                    child: Text('Calcule seu IMC',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 50.0, right: 50.0),
                  padding: EdgeInsets.only(bottom: 5.0),
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration( color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateImc() {
   _imc = _weight / (_height * _height / 10000);
  }

  String getResult(){
    if (_imc >= 40) {
      return 'Obesidade grau III';
    } else if (_imc >= 35){
      return 'Obesidade grau II';
    } else if (_imc >= 30){
      return 'Obesidade grau I';
    } else if (_imc >= 25){
      return 'Sobrepeso';
    } else if (_imc >= 18.5){
      return 'Peso ideal';
    } else {
      return 'Abaixo do peso';
    }
  }

}
