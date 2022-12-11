import 'package:flutter/material.dart';
import 'package:flutter_login/components/icon_text_btn.dart';
import 'package:flutter_login/components/stroke_text.dart';
import 'package:flutter_login/pages/login_page.dart';
import 'package:flutter_login/pages/signup_page.dart';

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
          colorScheme: const ColorScheme(
            primary: Color.fromARGB(255, 70, 31, 100),
            background: Colors.white,
            brightness: Brightness.light,
            error: Colors.red,
            onBackground: Colors.black,
            onError: Colors.pink,
            onPrimary: Colors.white,
            onSecondary: Colors.yellow,
            onSurface: Colors.purple,
            secondary: Colors.amber,
            surface: Color(0xfff8f8f8),
          ),
          textTheme: const TextTheme(
              headlineLarge: TextStyle(
                  fontSize: 30,
                  color: Colors.amber,
                  fontWeight: FontWeight.w700),
              headlineMedium: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              headlineSmall:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              bodyLarge: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500))),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    debugPrint('${size.height}');
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    width: size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/pexels-dids-3527786.jpg'),
                            fit: BoxFit.cover)),
                    child: SafeArea(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Center(
                          child: SizedBox(
                        width: size.width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StrokeText(
                              text: 'Welcome to Login Sample',
                              fontSize: 30,
                              strokeColor: Theme.of(context).colorScheme.primary,
                              textColor: Theme.of(context).colorScheme.secondary,
                            ),
                            StrokeText(
                              text: 'Signup to Continue',
                              fontSize: 22,
                              strokeColor: Theme.of(context).colorScheme.primary,
                              textColor: Colors.white,
                            ),
                            
                          ],
                        ),
                      )),
                    )))),
            Expanded(
                flex: 3,
                child: Container(
                    width: size.width,
                    color: Theme.of(context).colorScheme.surface,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Or Signup with',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: IconTextBtn(
                                  btnColor: const Color(0xff4267B2),
                                  imagePath: 'assets/images/facebook.png',
                                  imageSize: 32,
                                  btnText: 'Facebook',
                                  btnTextStyle: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.apply(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                      ),
                                )),
                                const SizedBox(
                                  width: 18,
                                ),
                                Expanded(
                                    child: IconTextBtn(
                                  btnColor: const Color(0xffde5246),
                                  imagePath: 'assets/images/google-plus.png',
                                  imageSize: 32,
                                  btnText: 'Google',
                                  btnTextStyle: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.apply(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                      ),
                                )),
                              ],
                            )
                          ],
                        ),
                      ),
                    )))
          ],
        ),
        Center(
          child: SizedBox(
            height: size.height * 0.4 + 48,
            width: size.width * 0.9,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  margin: const EdgeInsets.only(bottom: 48),
                  child: Column(
                    children: [
                      TabBar(
                        unselectedLabelColor: Colors.grey.withOpacity(0.5),
                        labelColor: Theme.of(context).colorScheme.primary,
                        labelStyle: Theme.of(context).textTheme.headlineMedium,
                        tabs: const [
                          Tab(
                            text: 'LOGIN',
                          ),
                          Tab(
                            text: 'SIGNUP',
                          )
                        ],
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: Theme.of(context).colorScheme.secondary,
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                              width: 2.0,
                              color: Theme.of(context).colorScheme.secondary),
                          insets: const EdgeInsets.symmetric(horizontal: 24.0),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: const [LoginPage(), SignupPage()],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                        ),
                        onPressed: () {
                          debugPrint('aaaa');
                        },
                        child: const Icon(
                          Icons.east,
                          color: Colors.white,
                          size: 48,
                        ),
                      ),
                    ))
              ],
            ),
          ),
        )
      ],
    ));
  }
}
