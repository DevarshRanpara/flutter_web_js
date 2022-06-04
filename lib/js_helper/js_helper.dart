import 'dart:js' as js;

class JSHelper {
  String getPlatformFromJS() {
    return js.context.callMethod('getPlatform');
  }
}