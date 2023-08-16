import 'package:flutter/material.dart';
import 'package:quizapp/Screen/quizscreen.dart';
import 'package:quizapp/Screen/walcomescreen.dart';
import 'package:quizapp/data/quizquestion.dart';

class ResultScreen extends StatefulWidget {
  final int score;

  const ResultScreen({super.key, required this.score});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Widget getTropic(int s) {
    if (s == 0) {
      return Image.asset("Images/sad.png");
    } else if (s <= 40) {
      return Image.asset("Images/trophy4.jpg");
    } else if (s <= 70) {
      return Image.asset("Images/trophy5.jpg");
    } else {
      return Image.asset("Images/trophy3.jpg");
    }
  }

  String getText(int s) {
    if (s == 0) {
      return "Try Again";
    } else if (s <= 40) {
      return  "☹️Low Score👍";
    } else if (s <= 70) {
      return "😊Moderate Score🏅";
    } else {
      return "🎊Congratulations🏆";
    }
  }
  String getQuoits(int s)
  {
    if (s == 0) {
      return "Even though you scored zero this time, remember that every setback is an opportunity for a comeback. Stay determined, keep learning, and your efforts will lead to progress. Don't let this discourage you!";
    } else if (s <= 40) {
      return "Don't be discouraged by your score.Use this as an opportunity to identify areas for growth and focus your efforts. Keep pushing forward!";
    } else if (s <= 70) {
      return "Use this as an opportunity to identify areas for growth and focus your efforts. Keep pushing forward!";
    } else {
      return "Congratulations on your impressive score! Your hard work and dedication are clearly paying off. Keep up the excellent work and continue aiming high!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF252c4a),
        body: Column(
          children: [
            Container(
              height: 250,
              padding: EdgeInsets.only(top: 70),
              child: Center(
                child: getTropic(widget.score),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              getText(widget.score),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
             
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                  
                   getQuoits(widget.score),
                   style: TextStyle(
                    color: Colors.teal,
                    fontSize: 15,
                  
                   ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your Score",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text.rich(TextSpan(
                text: "${widget.score}",
                style: TextStyle(fontSize: 30, color: Colors.orange),
                children: [
                  TextSpan(
                      text: "/${questions.length * 10}",
                      style: TextStyle(color: Colors.white))
                ])),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WalcomeScreen()));
                },
                child: Text(
                  "Restart Quiz",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ))
          ],
        ));
  }
}
