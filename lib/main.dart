import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _cartItemsNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: _bottomNavigationBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_addRemoveCartButtons()],
      ),
    );
  }
}

// Widget _bottomNavigationBar() {
//   BottomNavigationBar(items: )
// }

Widget _addRemoveCartButtons() {
 return FloatingActionButton.extended(
    onPressed: () {},
    label: const Text('Add to cart'),
    icon: const Icon(Icons.add),
  );
}
