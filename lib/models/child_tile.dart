import 'package:flutter/widgets.dart';

class ChildTile {
  final ImageProvider avatarImagePath;
  final String childName;
  final String balance;
  final String totalBalance;
  final String savingsBalance;
  final String bottomName;

  ChildTile({
    required this.avatarImagePath,
    required this.childName,
    required this.balance,
    required this.totalBalance,
    required this.savingsBalance,
    required this.bottomName,
  });
}
