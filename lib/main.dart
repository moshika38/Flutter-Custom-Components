import 'package:flutter/material.dart';
import 'package:flutter_coustom_widgets/kWidgets/dropdown.dart';
 
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

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();

  String? selectionValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CoustomDropDownMenu(
              HintText: "select ",
              height: 50,
              options: const ['male', 'female'],
              onChanged: (value) {
                setState(() {
                  selectionValue = value;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    print(selectionValue);
                  });
                },
                child: Text("Click"))
          ],
        ),
      ),
    );
  }
}
