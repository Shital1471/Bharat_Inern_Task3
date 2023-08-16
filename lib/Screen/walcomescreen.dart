import 'package:flutter/material.dart';
import 'package:quizapp/Screen/quizscreen.dart';

class WalcomeScreen extends StatefulWidget {
  const WalcomeScreen({super.key});

  @override
  State<WalcomeScreen> createState() => _WalcomeScreenState();
}

class _WalcomeScreenState extends State<WalcomeScreen> {
  final _text = TextEditingController();
  bool _validate = false;
 
  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252c4a),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Spacer(
            flex:1,
          ),
          Text(
            "Let's Play Quiz",
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Entre Your Information below",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
           controller: _text,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Fill Name",
                errorText: _validate ? 'Value Can not Be Empty' : null,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(28)))
                    ),
          ),
         SizedBox(
          height: 40,
         ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizScreen()));
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0 * 0.75),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "Lets Start Quiz",
                  style: TextStyle(color: Colors.black),
                ),
              )),
          Spacer(flex: 1,)
        ]),
      )),
    );
  }
}
