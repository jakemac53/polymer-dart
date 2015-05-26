// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
library polymer.src.common.polymer_element;

import 'package:initialize/initialize.dart' show Initializer;
import 'package:web_components/web_components.dart' show CustomElement;
import 'polymer_js_proxy.dart';

class PolymerElement extends CustomElement {
  final Map<String, dynamic> hostAttributes;

  const PolymerElement(
      String tag, {String extendsTag, this.hostAttributes})
      : super(tag, extendsTag: extendsTag);

  void initialize(Type t) {
    createJsConstructorFor(t, hostAttributes);
    super.initialize(t);
  }
}