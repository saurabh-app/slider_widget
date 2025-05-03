import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FaIcon, FontAwesomeIcons;
import 'package:slider_widget/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int heightSlider = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: darkBlueColor,
      ),
      backgroundColor: darkBlueColor,

      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    Colour: blueColor,
                    cardChid: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FaIcon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Male", style: textStyle),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Colour: blueColor,
                    cardChid: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FaIcon(
                            FontAwesomeIcons.venus,
                            color: Colors.white,
                            size: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Female", style: textStyle),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              Colour: blueColor,
              cardChid: Column(
                children: [
                  Text("Height", style: textStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${heightSlider}", style: numtextStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("cm", style: numtextStyle),
                      ),
                    ],
                  ),
                  Slider(
                    min: 120,
                    max: 200,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white70,
                    thumbColor: Colors.pink,
                    value: heightSlider.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        heightSlider = value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(Colour: blueColor, cardChid: Column()),
                ),
                Expanded(
                  child: ReusableCard(Colour: blueColor, cardChid: Column()),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.Colour, required this.cardChid});

  Color Colour;
  final Widget cardChid;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
