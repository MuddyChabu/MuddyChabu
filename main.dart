import 'package:flutter/material.dart';
import 'registration_page.dart';

void main() {
  runApp(MyApp());
}

/// The root widget of the application.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Constraints Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

/// The home page which displays different layouts based on screen width.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Design')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Choose the layout based on the screen width.
            if (constraints.maxWidth > 600) {
              return WideLayout();
            } else {
              return NarrowLayout();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the registration page.
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegistrationPage()),
          );
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}

/// Layout for wide screens.
class WideLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(color: const Color.fromARGB(255, 243, 33, 233), height: 200)),
        Expanded(child: Container(color: Color.fromARGB(255, 72, 19, 152), height: 200)),
      ],
    );
  }
}

/// Layout for narrow screens.
class NarrowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(color: Color.fromARGB(255, 10, 4, 117), height: 200)),
        Expanded(child: Container(color: Color.fromARGB(255, 117, 87, 227), height: 200)),
      ],
    );
  }
}
