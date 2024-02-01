import 'package:flutter/material.dart';
import 'package:tp_flutter/quesiton.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyBigQuizz(title: 'Esport Quizz'),
    );
  }
}

class MyBigQuizz extends StatefulWidget {
  const MyBigQuizz({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyBigQuizz> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyBigQuizz> {

  @override
  Widget build(BuildContext context) {

    double width100 = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF101e35),
        title: Center(child: Text(widget.title, style: TextStyle(color: Colors.white),)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: width100,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF101e35)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                    Expanded(
                        child: Image.asset("images/assets/kcorp.webp", fit: BoxFit.cover, width: width100)
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => MyQuestion(title: "Esport Quizz"))
                            );
                          },
                          child: const Text("Commencer la partie", style: TextStyle(
                            color: Color(0xFF101e35)
                          ),)
                      ),
                    )
                ],
              ),
            )
          ),

        )
      )
    );
  }
}
