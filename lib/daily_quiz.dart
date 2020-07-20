import 'package:flutter/material.dart';

// CREATE a full widget here that contains ALL question...

enum PainToday { yes, no }

class RadioButtonQuestion extends StatefulWidget {
  RadioButtonQuestion({Key key}) : super(key: key);

  @override
  _RadioButtonOptionsState createState() => _RadioButtonOptionsState();
}

class _RadioButtonOptionsState extends State<RadioButtonQuestion> {
  PainToday _answer = PainToday.no; // default?

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home - Headache Data'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Have you experienced any pain today?",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                )),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: ListTile(
                    title: const Text('Yes',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                      )),
                    leading: Radio(
                      value: PainToday.yes,
                      groupValue: _answer,
                      onChanged: (PainToday value) {
                        setState(() {
                          _answer = value;
                        });
                      },
                    ),
                  ),
                ),
                Flexible(
                child: ListTile(
                    title: const Text('No',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                      )),
                    leading: Radio(
                      value: PainToday.no,
                      groupValue: _answer,
                      onChanged: (PainToday value) {
                        setState(() {
                          _answer = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// abstract class Question extends StatefulWidget {
//   Question({Key key}) : super(key: key);

//   @override
//   _RadioButtonOptionsState createState() => _RadioButtonOptionsState();
// }

// class _RadioButtonOptionsState extends State<RadioButtonQuestion> {

//   Widget buildTitle(BuildContext context) {
//     return Text(
//       heading,
//       style: Theme.of(context).textTheme.headline5, // Inherit from context (or context's parent up the tree).
//     );
//   }
//   //Widget buildInputReceiver(BuildContext context);
// }


// class SingleAnswerQuestion extends Question{
//   final String question;
//   final List<String> options;
//   String answer;

//   SingleAnswerQuestion(this.question, this.options, this.answer);

//   Widget buildInputReceiver(BuildContext context) {
//     return Row(
//           children: <Widget>[
//             for(String option in options){
//               Flexible(
//                 child: ListTile(
//                   title: Text(option),
//                   leading: Radio(
//                     value: option,
//                     groupValue: answer, // STATEFUL
//                     onChanged: (String value) {
//                       setState(() {
//                         answer = value;
//                       });
//                   ),
//                 ),
//               )
//             }
//           ],
//         ),
//   }

// }