import 'dart:js' as js;
import 'dart:js_util';

import 'package:flutter_web_js/js_helper/js_promise_library.dart';

class JSHelper {
  String getPlatformFromJS() {
    return js.context.callMethod('getPlatform');
  }

  Future<String> callJSPromise() async {
    return await promiseToFuture(jsPromiseFunction("Hello I am back from JS"));
  }
}