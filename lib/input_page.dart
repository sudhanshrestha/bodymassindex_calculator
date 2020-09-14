import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

//List of constants to be used in the app page
const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xff191f37);
const bottomContainerColour = Color(0xFFEB1555);
const inactiveCardColour = Color(0xFF061b44);

//enumeration for male or female
enum GenderType { male, female }

//First page of the app
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = activeCardColour;
  Color femaleCardColour = activeCardColour;

  void updateColour(GenderType selectedGender) {
    if (selectedGender == GenderType.male) {
      if (maleCardColour == activeCardColour) {
        maleCardColour = inactiveCardColour;
        femaleCardColour = activeCardColour;
      } else {
        maleCardColour = activeCardColour;
      }
    }
    if (selectedGender == GenderType.female) {
      if (femaleCardColour == activeCardColour) {
        femaleCardColour = inactiveCardColour;
        maleCardColour = activeCardColour;
      } else {
        femaleCardColour = activeCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(GenderType.male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(GenderType.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            decoration: BoxDecoration(
              color: bottomContainerColour,
              borderRadius: BorderRadius.circular(90.0),
            ),
          ),
        ],
      ),
    );
  }
}
