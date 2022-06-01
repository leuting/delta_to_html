library delta_to_html;

import 'dart:convert';
import 'src/delta_markdown_encoder.dart';
import 'src/version.dart';

const version = packageVersion;

/// Codec used to convert between Markdown and Quill deltas.
const DeltaMarkdownCodec _kCodec = DeltaMarkdownCodec();

String deltaToHTML(String delta) {
  return _kCodec.encode(delta);
}

class DeltaMarkdownCodec extends Codec<String, String> {
  const DeltaMarkdownCodec();

  @override
  Converter<String, String> get encoder => DeltaMarkdownEncoder();

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
