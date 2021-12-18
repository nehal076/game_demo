class Url {
  static const String _NODE_CLUSTER_URL = "https://nlb-cluster.lottoweaver.com";

  static const String ADD_TO_CART_URL   = "$_NODE_CLUSTER_URL/ussd/cart/add";
  static const String FETCH_CART_URL    = "$_NODE_CLUSTER_URL/ussd/cart/get";
  static const String UPDATE_CART_URL   = "$_NODE_CLUSTER_URL/ussd/cart/update";
  static const String REMOVE_CART_URL   = "$_NODE_CLUSTER_URL/ussd/cart/remove";
  static const String FETCH_GAME_URL    = "$_NODE_CLUSTER_URL/common/fetch_game";
}
