import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatelessWidget {
  final String url;

  WebViewContainer(this.url);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.disabled,
      // gestureNavigationEnabled: true  ,
    );
  }
}