import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class OpenFile {
  static const MethodChannel _channel = const MethodChannel('open_file');

  static Future<String> open(filePath, {String type,String uti}) async {
    Map<String, String> map = {"file_path": filePath, "type": type,"uti":uti};
    return await _channel.invokeMethod('open_file', map);
  }

  /// Required String msg or String url
  /// Default title: "Share"
  static Future<int> generic(
      {String msg,
      String url,
      String title,
      String subject,
      String type}) async {
    final Map<String, dynamic> params = <String, dynamic>{
      'msg': msg,
      'url': url,
      'title': title,
      'subject': subject,
      'type': type,
    };
    return await exec(params);
  }

  static Future<int> whatsapp({String msg, String url}) async {
    final Map<String, dynamic> params = <String, dynamic>{
      'msg': msg,
      'url': url,
      'direct': 'whatsapp'
    };

    return await exec(params);
  }

  static Future<int> gmail({String subject, String msg, String url}) async {
    final Map<String, dynamic> params = <String, dynamic>{
      'msg': msg,
      'url': url,
      'subject': subject,
      'direct': 'gmail'
    };
    return await exec(params);
  }

  @protected
  static Future<int> exec(params) async {
    try {
      return await _channel.invokeMethod('share', params);
    } catch (e) {
      return await Future<int>.value(0);
    }
  }
}
