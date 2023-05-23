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
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Shyp Platform'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Ongoing'),
                Tab(text: 'Past'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              OrdersScreen(ongoing: true),
              OrdersScreen(ongoing: false),
            ],
          ),
        ),
      ),
    );
  }
}
