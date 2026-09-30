import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Opens the PhonePe checkout inside an in-app browser instead of the
/// system browser. PhonePe's own redirect always lands on the WEB
/// frontend's URL (phonepe.client.js hands it one static
/// PHONEPE_REDIRECT_URL, which 302s to `$FRONTEND_URL/parent/payment-result`
/// — verified by direct source read, there is no way to make it target a
/// custom edusoft:// link instead). Rather than let that web page actually
/// load, this screen watches every navigation and pops itself the moment
/// the URL's path matches that result page, before it renders — the caller
/// never sees the website, only this screen closing on its own once the
/// gateway is done. The actual outcome is never read off that URL: it's
/// always re-confirmed via GET /parent/payments/status/:orderId afterwards
/// (see PaymentResultScreen) — a redirect is only a signal to go check.
class PaymentWebViewScreen extends StatefulWidget {
  const PaymentWebViewScreen({super.key, required this.redirectUrl});

  final String redirectUrl;

  @override
  State<PaymentWebViewScreen> createState() => _PaymentWebViewScreenState();
}

class _PaymentWebViewScreenState extends State<PaymentWebViewScreen> {
  late final WebViewController _controller;
  bool _isLoading = true;

  static const _resultPathMarker = '/parent/payment-result';

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) => setState(() => _isLoading = true),
          onPageFinished: (_) => setState(() => _isLoading = false),
          onNavigationRequest: (request) {
            if (Uri.parse(request.url).path.contains(_resultPathMarker)) {
              Navigator.of(context).pop();
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.redirectUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Payment'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (_isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
