library dart_to_js_script_rewriter;

import 'dart:async' show Future;

import 'package:barback/barback.dart'
    show Asset, AssetId, BarbackMode, BarbackSettings, Transform, Transformer;
import 'package:html/dom.dart' show Document, Element;

/// Finds script tags with type equals `application/dart` and rewrites them to
/// point to the JS version. This eliminates a 404 get on the .dart file and
/// speeds up initial loads. Win!
class DartToJsScriptRewriter extends Transformer {
  final BarbackSettings settings;

  DartToJsScriptRewriter.asPlugin(this.settings);

  bool isPrimary(AssetId id) =>
      settings.mode == BarbackMode.RELEASE &&
      ['.html', '.htm'].contains(id.extension) &&
      !id.path.startsWith('lib');

  Future apply(Transform transform) async {
    final htmlSource = await transform.primaryInput.readAsString();
    Document document = new Document.html(htmlSource);

    // only apply changes to files with either a dart script (which has to be
    // rewritten), or a browser/dart.js script (which has to be removed)
    if (!document.querySelectorAll('script').any((script) =>
        scriptShouldBeRewritten(script) || scriptShouldBeRemoved(script))) {
      return new Future.value(null);
    }
    removeBrowserPackageScript(document);
    rewriteDartScriptTag(document);

    final id = transform.primaryInput.id;
    transform.addOutput(new Asset.fromString(id, document.outerHtml));
  }

  void removeBrowserPackageScript(Document document) {
    document
        .querySelectorAll('script')
        .where((tag) => scriptShouldBeRemoved(tag))
        .forEach((tag) => tag.remove());
  }

  void rewriteDartScriptTag(Document document) {
    document
        .querySelectorAll('script')
        .where((tag) => scriptShouldBeRewritten(tag))
        .forEach((tag) {
      final src = tag.attributes['src'];

      tag.attributes['src'] = src.replaceFirstMapped(
          new RegExp(r'\.dart($|[\?#])'), (match) => '.dart.js${match[1]}');
      tag.attributes.remove('type');
    });
  }

  bool scriptShouldBeRewritten(Element el) =>
      el.attributes['type'] == 'application/dart' &&
      el.attributes['src'] != null;

  bool scriptShouldBeRemoved(Element el) =>
      el.attributes['src'] != null &&
      el.attributes['src'].endsWith('browser/dart.js');
}
