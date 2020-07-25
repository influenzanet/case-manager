import 'dart:convert';
import 'package:universal_html/html.dart' as html;

class FileSaver {
  static saveTextFile(String fileName, String content) {
    // prepare
    final bytes = utf8.encode(content);
    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.document.createElement('a') as html.AnchorElement
      ..href = url
      ..style.display = 'none'
      ..download = fileName;
    html.document.body.children.add(anchor);
    // download
    anchor.click();
    // cleanup
    html.document.body.children.remove(anchor);
    html.Url.revokeObjectUrl(url);
  }
}
