import 'package:flutter/material.dart';
import 'package:navigation/firstpage.dart';
import 'package:navigation/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/first': (context) => firstPage(),
        '/second': (context) => secondPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 136, 132, 132),
      appBar: AppBar(
        title: Text(
          "Navigation !",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Home Page Let Start With Navigation",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => firstPage()));
                        Navigator.pushNamed(context, '/first');
                      },
                      shape: StadiumBorder(),
                      minWidth: 200,
                      height: 40,
                      color: const Color.fromARGB(255, 255, 2, 2),
                      child: Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "First Page",
                          style: TextStyle(
                              color: Color.fromARGB(255, 192, 189, 186),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    MaterialButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => secondPage()));
                        Navigator.pushNamed(context, '/second');
                      },
                      shape: StadiumBorder(),
                      minWidth: 200,
                      height: 40,
                      color: Color.fromARGB(255, 212, 69, 212),
                      child: Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "Second Page",
                          style: TextStyle(
                              color: Color.fromARGB(255, 192, 189, 186),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
