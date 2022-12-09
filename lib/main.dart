import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    debugPrint('${size.height}');
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
        child: SafeArea(
          child: Container(
              height: size.height * 0.8,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:64, bottom: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 36),
                            child: const Text(
                              '登入',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff4b2354),
                                  decoration: TextDecoration.none),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24),
                            child: Container(
                              width: size.width * 0.6,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const TextField(
                                textAlignVertical: TextAlignVertical.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff4b2354),
                                    decoration: TextDecoration.none),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    isCollapsed: true,
                                    border: InputBorder.none,
                                    hintText: '請輸入帳號或是信箱'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24),
                            child: Container(
                              width: size.width * 0.6,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const TextField(
                                textAlignVertical: TextAlignVertical.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff4b2354),
                                    decoration: TextDecoration.none),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    isCollapsed: true,
                                    border: InputBorder.none,
                                    hintText: '請輸密碼'),
                              ),
                            ),
                          ),
                          SizedBox(
                             width: size.width * 0.4,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(Colors.purple),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                )),
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                              ),
                              onPressed: () {},
                              child: Text('登入'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(flex: 2, child: Center(child: Text('其他登入方式'))),
                    Expanded(flex: 1, child: TextButton(onPressed: (){}, child: Text('註冊')))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
