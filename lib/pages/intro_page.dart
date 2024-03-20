import 'package:flutter/material.dart';
import 'package:sushi_store/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 156, 63, 58),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
            ),
            Text("SUSHI MAN",
                style: TextStyle(fontSize: 28, color: Colors.white)),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("lib/images/salmon_eggs.png"),
            ),
            SizedBox(
              height: 25,
            ),
            Text("THE TASTE OF JAPANESE FOOD",
                style: TextStyle(fontSize: 44, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text(
              "Feel the taste of the most popular Japanese from anywhere and anytime",
              style: TextStyle(color: Colors.grey[300],
              height: 2,
              ),
            ),
            SizedBox(height: 25,),
            MyButton(
                text: "Get started",
                onTap:(){
                  Navigator.pushNamed(context, '/menuPage');
                },
            )
          ],
        ),
      ),
    );
  }
}
