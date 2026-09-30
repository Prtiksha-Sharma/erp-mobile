import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Opens [url] outside the app (browser / viewer) — the mobile equivalent
/// of the web's `<a href target="_blank">View material</a>` links. A
/// malformed or unopenable URL shows a snackbar instead of failing silently.
class ExternalLinkButton extends StatelessWidget {
  const ExternalLinkButton({super.key, required this.label, required this.url, this.icon = Icons.open_in_new});

  final String label;
  final String url;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        minimumSize: const Size(0, 32),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      onPressed: () => openExternalUrl(context, url),
      icon: Icon(icon, size: 14),
      label: Text(label, style: const TextStyle(fontSize: 12)),
    );
  }
}

Future<void> openExternalUrl(BuildContext context, String url) async {
  final uri = Uri.tryParse(url);
  final opened = uri != null && await launchUrl(uri, mode: LaunchMode.externalApplication);
  if (!opened && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Couldn't open this link.")));
  }
}
