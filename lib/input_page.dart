import 'package:flutter/material.dart';

//First page of the app
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xff191f37),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xff191f37),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xff191f37),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xff191f37),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xff191f37),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

//Class for reusable card
class ReusableCard extends StatelessWidget {
  //Constructor created in order to change colour of the card.
  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
