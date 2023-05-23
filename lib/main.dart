import 'package:flutter/material.dart';
import 'package:shyp_ui/orders.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[50],
            title: Text(
              'My Loads',
              style: TextStyle(color: Colors.grey[800]),
            ),
            bottom: TabBar(
              indicatorWeight: 4.0,
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.grey[800],
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              tabs: const [
                Tab(text: 'Ongoing'),
                Tab(text: 'Past'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              OrdersScreen(fullfilled: true),
              OrdersScreen(fullfilled: false),
            ],
          ),
        ),
      ),
    );
  }
}
