import 'package:flutter/material.dart';

/// Role-agnostic fallback for a tab/route not built yet — same convention
/// as ComingSoonPage.jsx on the web frontend (shared/pages/, used as every
/// role's unmatched-route fallback there).
class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(child: Text('Coming soon')),
    );
  }
}
