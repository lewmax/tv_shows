import 'package:html/parser.dart';

extension StringValidation on String {
  String clearFromHtmlTags() {
    final document = parse(this);
    return parse(document.body?.text).documentElement?.text ?? '';
  }
}
