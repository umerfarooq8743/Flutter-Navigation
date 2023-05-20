import 'package:flutter/material.dart';
import 'package:navigation/firstpage.dart';
import 'package:navigation/main.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
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
        backgroundColor: Color.fromARGB(255, 0, 162, 255),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Second Page Let Start With Navigation",
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
                        // Navigator.pop(
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
                        Navigator.pop(context);
                      },
                      shape: StadiumBorder(),
                      minWidth: 200,
                      height: 40,
                      color: Color.fromARGB(255, 212, 69, 212),
                      child: Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "Home Page",
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
