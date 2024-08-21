import 'package:flutter/material.dart';
import 'package:flutter_coustom_widgets/kWidgets/popup_windwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popup Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            CoustomPopupWindow().showPopup(context);
          },
          child: Text('Show Popup'),
        ),
      ),
    );
  }
}
