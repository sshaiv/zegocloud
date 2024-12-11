import 'package:flutter/material.dart';
import 'package:zegocloud/calling_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video calling app',
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Video Calling App",style: TextStyle(fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: _textEditingController,
            decoration: const InputDecoration(
              labelText: 'Enter call id to join',
              border: OutlineInputBorder(),
            ),
          ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>CallingPage(callID:_textEditingController.text),
              ),
            );
          }, child: const Text('Join'),
          ),
        ],
        ),
      ),
    );
  }
}