import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'BBANTO', home: Grade());
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('BBANTO'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: CircleAvatar(
              backgroundColor: Colors.amber[800],
              backgroundImage: NetworkImage(
                  'https://www.woolha.com/media/2020/03/eevee.png'),
              radius: 60,
            )),
            Divider(
              height: 60,
              color: Colors.grey[850],
              thickness: 0.5, // 굵기
              endIndent: 0, // 끝에서 짧아지는? 정도
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.white, letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'EEVEE',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 30),
            Text(
              'EEVEE POWER LEVEL',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'using bite',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'so cute',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'fire flames',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.amber[800],
                radius: 40,
                backgroundImage: AssetImage(
                  'assets/PikPng.com_flying-cat-png_763254.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
