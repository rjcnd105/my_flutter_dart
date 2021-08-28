import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo', // 앱 이름
      theme: ThemeData(
        // 기본적인 테마
        primarySwatch: Colors.green, // 사용할 색상 견본
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First App'), // 앱 바 타이틀
          centerTitle: false,
          backgroundColor: Colors.redAccent,
          elevation: 0.0,
        ),
        // body: Padding(
        //   /* padding
        //   * EdgeInsets.all(10) // 전체 패딩
        //   * EdgeInsets.symmetric(vertical: 10)  // 세로
        //   * EdgeInsets.symmetric(horizontal: 10) // 가로
        //   * EdgeInsets.only(left: 30) // 한쪽만 줄때
        //   * */
        //   padding: EdgeInsets.fromLTRB(30, 40, 0, 0), // Left Top Right Bottom
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [Text("hi1"), Text("hi2"), Text("hi3")],
        //   ),
        // ));

        // 여기에서의 Column 위젯은 세로 100%를 차지하기에 가로에만 Center가 가로만 중앙으로 위치시키는 것 처럼 보인다
        // Row 위젯의 경우에는 가로 100%를 차지하기에 세로만 Center위젯의 영향을 받는다.
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("hi1"), Text("hi2"), Text("hi3")],
          ),
        ));
  }
}
