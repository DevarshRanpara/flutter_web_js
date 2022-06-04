import 'package:flutter/material.dart';
import 'package:flutter_web_js/js_helper/js_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web + JS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Web + JS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final JSHelper _jsHelper = JSHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                "Check Platform",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                print(_jsHelper.getPlatformFromJS());
              },
            ),
            const SizedBox(height: 16),
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                "JS Promise",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                print("Calling JS promise");
                String dataFromJS = await _jsHelper.callJSPromise();
                print(dataFromJS);
              },
            ),
          ],
        ),
      ),
    );
  }
}
