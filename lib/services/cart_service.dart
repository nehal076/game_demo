import 'dart:convert';

import 'package:game_demo/model/response/response.dart';
import 'package:game_demo/utils/app_constants.dart';
import 'package:game_demo/utils/url.dart';
import 'package:http/http.dart';

import 'api_service.dart';

class CartService {
  static const Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    'client_key': AppConstants.clientKey,
    'device': AppConstants.loginDevice,
  };

  static Future addToCart(Map<String, dynamic> request) async {
    final Response? response = await ApiService.makeRequest(
        Url.ADD_TO_CART_URL, RequestType.post, request, headers);

    String? jsonString = response?.body;
    if (jsonString == null) return null;

    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return jsonMap;
  }

  static Future fetchCart(Map<String, dynamic> request) async {
    final Response? response = await ApiService.makeRequest(
        Url.FETCH_CART_URL, RequestType.post, request, headers);

    String? jsonString = response?.body;
    if (jsonString == null) return null;

    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return jsonMap;
  }

  static Future updateCart(Map<String, dynamic> request) async {
    final Response? response = await ApiService.makeRequest(
        Url.UPDATE_CART_URL, RequestType.post, request, headers);

    String? jsonString = response?.body;
    if (jsonString == null) return null;

    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return jsonMap;
  }

  static Future removeFromCart(Map<String, dynamic> request) async {
    final Response? response = await ApiService.makeRequest(
        Url.REMOVE_CART_URL, RequestType.post, request, headers);

    String? jsonString = response?.body;
    if (jsonString == null) return null;

    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return jsonMap;
  }

  static Future<GameResponse?> fetchGame(Map<String, dynamic> request) async {
    final Response? response = await ApiService.makeRequest(
        Url.FETCH_GAME_URL, RequestType.post, request, headers);

    String? jsonString = response?.body;
    if (jsonString == null) return null;
    Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    return GameResponse.fromJson(jsonMap);
  }
}
