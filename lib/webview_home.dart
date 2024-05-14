import 'package:flutter/material.dart';
import 'package:webview_universal/webview_controller/webview_controller.dart';
import 'package:webview_universal/webview_desktop/src/webview.dart';
import 'package:webview_universal/webview_universal.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final WebViewController _webViewController = WebViewController();


  @override
  void initState() {
    super.initState();
    _webViewController.init(context: context,setState: setState,uri: Uri.https('amazon.com'));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: double.minPositive,),
      body: WebView(controller: _webViewController),
    );
  }

}
