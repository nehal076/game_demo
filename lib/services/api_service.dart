import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

enum RequestType { get, post, put }

class ApiService {
  static bool showLog = true;
  static bool showColorLog = true;

  static Future<Response?> makeRequest(
    String url,
    RequestType requestType,
    dynamic parameter,
    dynamic headers,
  ) async {
    var client = http.Client();
    switch (requestType) {
      case RequestType.get:
        try {
          String queryString = Uri(queryParameters: parameter).query;
          final Response response = await client.get(
            Uri.parse('$url?$queryString'),
            headers: headers,
          );

          printLog("GET", url, headers, parameter, response);

          onResponseReceive(response);
        } catch (e) {
          log("$url : $e");
        }
        break;

      case RequestType.post:
        try {
          final Response response = await client.post(
            Uri.parse(url),
            headers: headers,
            body: jsonEncode(parameter),
          );

          printLog("POST", url, headers, parameter, response);

          onResponseReceive(response);
        } catch (e) {
          log("$url : $e");
        }
        break;

      case RequestType.put:
        try {
          final Response response = await client.put(
            Uri.parse(url),
            headers: headers,
            body: jsonEncode(parameter),
          );

          printLog("PUT", url, headers, parameter, response);
          onResponseReceive(response);
        } catch (e) {
          log("$url : $e");
        }
        break;
      default:
        return throw Exception("The HTTP request method is not found");
    }
  }

  static Future makeMultipartRequest(
    String url,
    dynamic parameter,
    dynamic headers,
    Iterable<MultipartFile> files,
  ) async {
    try {
      final request = http.MultipartRequest(
        'POST',
        Uri.parse(url),
      );
      request.fields.addAll(parameter);
      request.headers.addAll(headers);
      request.files.addAll(files);
      http.StreamedResponse response = await request.send();

      printLog("[MULTIPART POST]", url, headers, parameter, response);
      for (var i in files) {
        log("\x1B[36m${i.field}: ${i.filename}\x1B[0m");
      }

      if (response.statusCode == 200) {
        var streamData = await response.stream.bytesToString();
        log("\n Response: $streamData");
        return streamData;
      } else {
        throw Exception(response.stream.bytesToString());
      }
    } catch (e) {
      log("$url : $e");
    }
  }

  static printLog(type, url, headers, parameter, response) {
    if (showLog) {
      if (showColorLog) {
        logApi("$type", url, headers, parameter, response);
      } else {
        log("[$type] $url \nHeaders: $headers \nRequest: ${jsonEncode(parameter).toString()}\nResponse: ${response.body}");
      }
    }
  }

  static onResponseReceive(response) {
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(response.statusCode);
    }
  }

  static logApi(
    dynamic type,
    String url,
    dynamic headers,
    dynamic parameter,
    dynamic response,
  ) {
    log("\x1B[35m[$type] $url\x1B[0m \x1B[34m\nHeaders: $headers\x1B[0m  \x1B[36m\nRequest: ${jsonEncode(parameter).toString()}\n\x1B[0m Response: ${response.body}");
  }
}
