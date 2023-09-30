import 'package:flutter/material.dart';
import 'package:portfolio_vikram/widgets/myappBar.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'register_web_webview_stub.dart'
    if (dart.library.html) 'register_web_webview.dart';

class WebViewContent extends StatefulWidget {
  @override
  _WebViewContentState createState() => _WebViewContentState();
}

class _WebViewContentState extends State<WebViewContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
      initialUrl: "https://procodehelp.blogspot.com",
      backgroundColor: Colors.red,
      javascriptMode: JavascriptMode.unrestricted,
      gestureNavigationEnabled: true,
      onWebResourceError: (WebResourceError error) {
        print("WebResourceError: ${error.description}");
        // Handle the error or show an error message to the user.
      },
    ));
  }
}
