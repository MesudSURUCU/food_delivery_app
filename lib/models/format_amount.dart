import 'package:intl/intl.dart';

String formatAmount(double price) {
  var format = NumberFormat.currency(locale: 'tr', symbol: '₺');
  return format.format(price);
}