import 'package:flutter/material.dart';
import 'package:quizapp/data/quizquestion.dart';
import 'package:quizapp/result/result_screen.dart';

class QuizScreen extends StatefulWidget {
  
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  PageController? _controller = PageController(initialPage: 0);
  bool answerd = false;
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xFF117eeb);
  bool isWrite = false;
  
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252c4a),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller!,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemCount: questions.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/${questions.length}",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(children: [
                      Text(
                        questions[index].question!,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      for (int i = 0; i < questions[index].answer!.length; i++)
                        Container(
                            padding: EdgeInsets.all(13.0),
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 18.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  questions[index].answer!.keys.toList()[i],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                                Container(
                                  height: 26,
                                  width: 26,
                                  decoration: BoxDecoration(
                                    color: isPressed
                                        ? questions[index]
                                                .answer!
                                                .entries
                                                .toList()[i]
                                                .value
                                            ? isTrue
                                            : isWrong
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: MaterialButton(
                                      onPressed: isPressed
                                          ? () {}
                                          : () {
                                              setState(() {
                                                isPressed = true;
                                              });
                                              if (questions[index]
                                                  .answer!
                                                  .entries
                                                  .toList()[i]
                                                  .value) {
                                                score += 10;
                                                print(score);
                                              }
                                            }),
                                )
                              ],
                            )),
                    ]),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: isPressed
                            ? index + 1 == questions.length
                                ? () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ResultScreen(
                                                  score: score,
                                                  
                                                )));
                                  }
                                : () {
                                    _controller!.nextPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.linear);
                                    setState(() {
                                      isPressed = false;
                                    });
                                  }
                            : null,
                        child: Text(
                          index + 1 == questions.length
                              ? "See result"
                              : "Next Question",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
