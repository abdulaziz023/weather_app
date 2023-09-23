extension Temerature on double {
  String get fahrenheitToCelsius => "${(this - 32) * 5 ~/ 9}";
}