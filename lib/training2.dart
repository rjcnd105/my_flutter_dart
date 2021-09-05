import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primaryColor: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon Menu'),
        centerTitle: true,
        elevation: 0,
        // // 앱바내 버튼이나 간단한 위젯을 왼쪽에 배치
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   // 아이콘 버튼을 터치했을때 일어나는 이벤트 정의
        //   onPressed: () {
        //     print("menu button is clicked");
        //   },
        // ),
        // 복수의 버튼 등을 오른쪽에 배치할때
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("shopping cart button is clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search button is clicked");
            },
          )
        ],
      ),
      // drawer 위젯 추가시 자동으로 햄버거 생김
      drawer: Drawer(
        // ListView: 복수의 위젯을 나열
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.woolha.com/media/2020/03/eevee.png'),
                  backgroundColor: Colors.transparent,
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/flying_cat.png'),
                  )
                ],
                accountName: Text("HOEJUN"),
                accountEmail: Text("rjcnd123@gmail.com"),
                onDetailsPressed: () {
                  print('arrow is clicked');
                },
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                )),
            ListTile(
              // leading: 맨 좌측에 위젯을 배치
              leading: Icon(
                Icons.home,
                color: Colors.grey[800],
              ),
              title: Text("Home"),
              onTap: () {
                print('Home is clicked');
              },
              // trailing: 맨 우측에 위젯을 배치
              trailing: Icon(Icons.add),
            ),
            ListTile(
              // leading: 맨 좌측에 위젯을 배치
              leading: Icon(
                Icons.app_settings_alt,
                color: Colors.grey[800],
              ),
              title: Text("Setting"),
              onTap: () {
                print('Setting is clicked');
              },
              // trailing: 맨 우측에 위젯을 배치
              trailing: Icon(Icons.add),
            ),
            ListTile(
              // leading: 맨 좌측에 위젯을 배치
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[800],
              ),
              title: Text("Q&A"),
              onTap: () {
                print('Question is clicked');
              },
              // trailing: 맨 우측에 위젯을 배치
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
