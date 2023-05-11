import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Code Factory'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                controller!.loadUrl('https://blog.codefactory.ai');
              },
              icon: const Icon(
                Icons.home,
              ),
            ),
            IconButton(
              onPressed: () {
                controller!.goBack();
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
            IconButton(
              onPressed: () {
                controller!.goForward();
              },
              icon: const Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
        body: WebView(
          initialUrl: 'https://blog.codefactory.ai',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
        ));
  }
}
