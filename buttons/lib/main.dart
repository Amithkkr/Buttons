import 'package:buttons/tabbar.dart';
import 'package:flutter/material.dart';

import 'elevated_button_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff191919),
      appBar: AppBar(
        title: Text("All Buttons Examples"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Tabbar List
              ElevatedButtonn(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabBarList(),
                    ),
                  );
                },
                text: "Tabbar List",
              ),
              SizedBox(
                height: 20.0,
              ),
              // //Floating Action Button Menu
              // ElevatedButtonn(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => FloatingActionButtonMenu(),
              //       ),
              //     );
              //   },
              //   text: "Floating Action Button Menu",
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),

              // //checked button list
              // ElevatedButtonn(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => GroupOfCheckedButtons(),
              //       ),
              //     );
              //   },
              //   text: "Group Of Checked Buttons",
              // ),

              // //radio button list
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => GroupOfRadioButtons(),
              //       ),
              //     );
              //   },
              //   child: Text("Group Of Radio Buttons"),
              // ),

              // //Dropdown list
              // ElevatedButtonn(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => DropDownButton(),
              //       ),
              //     );
              //   },
              //   text: "Drop Down Button",
              // ),

              // //Reaction page
              // ElevatedButtonn(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => ReactionButton(),
              //       ),
              //     );
              //   },
              //   text: "Reaction Button",
              // ),
            ]),
      ),
    );
  }
}
