import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabBarList extends StatefulWidget {
  const TabBarList({Key? key}) : super(key: key);

  @override
  _TabBarListState createState() => _TabBarListState();
}

class _TabBarListState extends State<TabBarList> {
  Container tabBarContainer(String text, IconData icon) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white60,
      ),
      child: Tab(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(
              width: 2.0,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xffeceff1),
        appBar: AppBar(
          title: Text("Tabbar List"),
          backgroundColor: Colors.pink,
          elevation: 10.0,
          toolbarHeight: 120,
          bottom: TabBar(
            indicatorColor: Colors.purple,
            indicatorWeight: 5,
            unselectedLabelColor: Colors.white38,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
            tabs: [
              tabBarContainer("Car", Icons.directions_car_outlined),
              tabBarContainer("Bus", Icons.directions_bus_outlined),
              tabBarContainer("Cycle", Icons.motorcycle_outlined),
              tabBarContainer("Taxi", Icons.directions_car),
              tabBarContainer("Aeroplane", Icons.airplanemode_active),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tabBody(Icons.directions_car_outlined),
            tabBody(Icons.directions_bus_outlined),
            tabBody(Icons.motorcycle_outlined),
            tabBody(Icons.directions_car),
            tabBody(Icons.airplanemode_active),
          ],
        ),
      ),
    );
  }

  Icon tabBody(IconData icon) {
    return Icon(
      icon,
      color: Colors.pinkAccent,
      size: 50,
    );
  }
}
