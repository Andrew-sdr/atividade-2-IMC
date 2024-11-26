import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget{
  ResultsScreen({required this.imcResult, required this.resultText});

  final String imcResult;
  final String resultText;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'O seu IMC é:',
                  style: TextStyle(
                    fontSize: 36, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              Center(
                child: Text(
                  imcResult,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              Center(
                child: Text(
                  resultText,
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              GestureDetector(
                onTap: (){
                  imcResult;
                  Navigator.pop(context);
                },
                child: Container(
                  child: Center(
                    child: Text('Calcular novamente',
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
          )
        ),
      )
    );
  }
}