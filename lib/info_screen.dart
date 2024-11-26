import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora do IMC"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("Categorias do IMC",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Menos de 18.5",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                "Voce está abaixo do peso.",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Entre 18.5 e 24.9",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                "Voce está com o peso ideal.",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Entre 25 e 29.9",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                "Voce está com sobrepeso.",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Entre 30 e 34.9",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                "Voce está com obesidade grau I.",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Entre 35 e 39.9",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                "Voce está com obesidade grau II.",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Igual ou superior a 40",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                "Voce está com obesidade grau III.",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}