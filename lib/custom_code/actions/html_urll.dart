// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

Future<String?> htmlUrll(String? htmlString) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (htmlString != null) {
    final document = parse(htmlString);

    final linkElement = document.querySelector('a');
    if (linkElement != null) {
      final url = linkElement.attributes['href'];
      return url;
    }
  }

  return null; // Retorna null quando nenhum link é encontrado ou quando o htmlString é nulo.
  /// MODIFY CODE ONLY ABOVE THIS LINE
}
