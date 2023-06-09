import 'package:flutter/material.dart';

class MonthlyTrans {
  final AssetImage avatarImagePath;
  final String giverName;
  final String date;
  final String transAmount;
  final String updatedBalance;

  MonthlyTrans({
    required this.avatarImagePath,
    required this.giverName,
    required this.date,
    required this.transAmount,
    required this.updatedBalance,
  });
}
