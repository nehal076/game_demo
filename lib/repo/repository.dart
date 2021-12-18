import 'package:game_demo/model/response/response.dart';
import 'package:game_demo/services/cart_service.dart';

class Repository {
  /* --------------- Cart Service --------------- */

  static Future addToCart(Map<String, dynamic> request) =>
      CartService.addToCart(request);

  static Future fetchCart(Map<String, dynamic> request) =>
      CartService.fetchCart(request);

  static Future updateCart(Map<String, dynamic> request) =>
      CartService.updateCart(request);

  static Future removeFromCart(Map<String, dynamic> request) =>
      CartService.removeFromCart(request);

  static Future<GameResponse?> fetchGame(Map<String, dynamic> request) =>
      CartService.fetchGame(request);
}
