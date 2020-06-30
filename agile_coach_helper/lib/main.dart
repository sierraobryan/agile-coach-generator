import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agile Coach on Call',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Agile Coach on Call'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _agileString = "";

  var _agileStrings = [
    "When to use iterative development? You should use iterative development only on projects that you want to succeed",
    "An organization that treats its programmers as morons will soon have programmers that are willing and able to act like morons only.",
    "Do the planning, but throw out the plans.",
    "There is nothing so useless as doing efficiently that which should not be done at all.",
    "The only way to go fast is to go well.",
    "The value of an idea lies in the using of it.",
    "Stable Velocity. Sustainable Pace.",
    "The secret of getting ahead is getting started. The secret of getting started is breaking your complex overwhelming tasks into small manageable tasks, and then start on the first one.",
    "As ScrumMasters, we should all value being great over being good.",
    "It seems that perfection is reached not when there is nothing left to add, but when there is nothing left to take away.",
    "It is a capital mistake to theorize before one has data.",
    "Everything stinks till it’s finished.",
    "Planning is everything. Plans are nothing.",
    "Right and wrong cease to be useful concepts when you’re talking about software development.",
    "If you want a guarantee, buy a toaster.",
    "A market is never saturated with a good product, but it is very quickly saturated with a bad one.",
    "As a software development consultant, I've never encountered a successful software company (although my sample size is limited) in which the team and project leaders were not technically savvy. ",
    "The important thing is not your process. The important thing is your process for improving your process.",
    "Keep your road map simple and easy to understand. Capture what really matters; leave out the rest.",
    "Simplicity is the ultimate sophistication.",
    "Failure is simply the opportunity to begin again, this time more intelligently.",
    "This indispensable first step to getting what you want is this: Decide what you want",
    "That which is a feature to a component team is a task to a feature team.",
  ];

  void _incrementCounter() {
    setState(() {
      Random random = new Random();
      int randomNumber = random.nextInt(_agileStrings.length);
      _agileString = _agileStrings[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'An inspiring quote about Agile',
            ),
            Center(
                child:Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child:
                    Text(
                      '$_agileString',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5,
                    )
                )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "New Comment",
        child: Icon(Icons.autorenew),
      ),
    );
  }
}
