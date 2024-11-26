import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

class GenderWidget extends StatefulWidget {
  final Function(int) onChange;

  const GenderWidget({Key? key, required this.onChange}) : super(key: key);

  @override
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  int _gender = 0;

  final ChoiceChip3DStyle selectedStyle = ChoiceChip3DStyle(
    topColor: Colors.white,
    backColor: Colors.grey[300]!,
    borderRadius: BorderRadius.circular(10),
  );

  final ChoiceChip3DStyle unselectedStyle = ChoiceChip3DStyle(
    topColor: Colors.white,
    backColor: Colors.grey[400]!,
    borderRadius: BorderRadius.circular(10),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ChoiceChip3D(
          style: _gender == 1 ? selectedStyle : unselectedStyle,
          height: 160,
          width: 160,
          onSelected: () {
            setState(() {
              _gender = 1;
            });
            widget.onChange(_gender);
          },
          onUnSelected: () {},
          selected: _gender == 1,
          child: Column(
            children: [
              Image.asset(
                "assets/images/man.png",
                width: 120,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Homem")
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        ChoiceChip3D(
          style: _gender == 2 ? selectedStyle : unselectedStyle,
          height: 160,
          width: 160,
          onSelected: () {
            setState(() {
              _gender = 2;
            });
            widget.onChange(_gender);
          },
          selected: _gender == 2,
          onUnSelected: () {},
          child: Column(
            children: [
              Image.asset(
                "assets/images/woman.png",
                width: 120,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Mulher")
            ],
          ),
        ),
      ],
    );
  }
}
