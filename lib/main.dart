import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}


class _MyCustomFormState extends State<MyCustomForm> {

  final name = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HNG Task2'),
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child:
              TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your name"
              ),
              controller: name,
              ),
            ),

            Expanded
              (child: SizedBox(height: 20,)),
              
              Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/hng.png'),
                  ),
                  Expanded(
                    child: Image.asset('assets/zuri.png'),
                  ),
                  Expanded(
                    child: Image.asset('14g') ,
                  )
                ],
              ),


              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // Retrieve the text the that user has entered by using the
                          // TextEditingController.
                          content: Text(name.text),
                        );
                      },
                    );
                  },
                  child: Text("Display")
              ),
          ],
        ),
      ),
    );
  }
}