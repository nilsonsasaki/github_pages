import 'package:url_launcher/url_launcher.dart';

mixin UrlLauncher {

  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.platformDefault,
    )) {
      throw 'Could not launch $url';
    }
  }
}

