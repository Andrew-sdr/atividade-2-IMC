import 'package:flutter/material.dart';

class HeightWeightWidget extends StatefulWidget {
  final Function(int) onChange;
  final String title;
  final int initValue;
  final int min;
  final int max;

  const HeightWeightWidget(
      {Key? key,
        required this.onChange,
        required this.title,
        required this.initValue,
        required this.min,
        required this.max})
      : super(key: key);

  @override
  _HeightWeightWidgetState createState() => _HeightWeightWidgetState();
}

class _HeightWeightWidgetState extends State<HeightWeightWidget> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text(
            widget.title,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  child: const CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      if (counter > widget.min) {
                        counter--;
                      }
                    });
                    widget.onChange(counter);
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  counter.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  child: const CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      if (counter < widget.max) {
                        counter++;
                      }
                    });
                    widget.onChange(counter);
                  },
                ),
              ],
            ),
          )
        ],
        ),
    );
  }
}