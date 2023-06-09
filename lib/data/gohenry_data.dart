import 'package:flutter/material.dart';
import 'package:gohenry_clone/models/monthly_trans.dart';

import '../models/child_tile.dart';
import '../models/home_tile.dart';

class GoHenryData extends ChangeNotifier {
  ////////////////////////////////////////////////////////////  LISTS  ////////////////////////////////////////////////////////////

  final List<HomeTile> _homeTiles = [
    HomeTile(
      iconImagePath: 'lib/assets/images/price-sticker.png',
      title: 'New in GoHenry',
      subTitle: 'Your app has new features!',
      boxColor: Colors.deepPurple,
      borderRadius: BorderRadius.circular(10),
    ),
    HomeTile(
        iconImagePath: 'lib/assets/images/money.png',
        title: 'Set up mission payments',
        subTitle: 'Reward your kids for learning',
        boxColor: Colors.deepPurple,
        borderRadius: BorderRadius.circular(50)),
    HomeTile(
        iconImagePath: 'lib/assets/images/well-done.png',
        title: 'School\'s out?',
        subTitle: 'Transfer money, say well done',
        boxColor: Colors.black,
        borderRadius: BorderRadius.circular(10)),
    HomeTile(
        iconImagePath: 'lib/assets/images/chat.png',
        title: 'Claim you bonus',
        subTitle: '\$50 for every friend referral',
        boxColor: Colors.white,
        borderRadius: BorderRadius.circular(10)),
  ];

  final List<ChildTile> _childTiles = [
    ChildTile(
      avatarImagePath: const AssetImage('lib/assets/images/owen.jpg'),
      childName: 'Owen',
      balance: '\$30.00',
      totalBalance: '\$40.00',
      savingsBalance: '\$0.00',
      bottomName: 'Owen',
    ),
    ChildTile(
      avatarImagePath: const AssetImage('lib/assets/images/eloise.jpg'),
      childName: 'Eloise',
      balance: '\$25.00',
      totalBalance: '\$30.00',
      savingsBalance: '\$0.00',
      bottomName: 'Eloise',
    ),
    ChildTile(
      avatarImagePath: const AssetImage('lib/assets/images/henry.jpg'),
      childName: 'Henry',
      balance: '\$20.00',
      totalBalance: '\$20.00',
      savingsBalance: '\$0.00',
      bottomName: 'Henry',
    )
  ];

  final List<MonthlyTrans> _monthlyTrans = [
    MonthlyTrans(
      avatarImagePath: const AssetImage('lib/assets/images/daddy.JPG'),
      giverName: 'Daddy',
      date: 'June 5, 2023',
      transAmount: '+\$3.00',
      updatedBalance: '\$30.00',
    ),
    MonthlyTrans(
      avatarImagePath: const AssetImage('lib/assets/images/daddy.JPG'),
      giverName: 'Daddy',
      date: 'June 2, 2023',
      transAmount: '+\$10.00',
      updatedBalance: '\$27.00',
    ),
    MonthlyTrans(
      avatarImagePath: const AssetImage('lib/assets/images/daddy.JPG'),
      giverName: 'Daddy',
      date: 'May 30, 2023',
      transAmount: '+\$5.00',
      updatedBalance: '\$17.00',
    ),
  ];
  ////////////////////////////////////////////////////////////  GETTERS  ////////////////////////////////////////////////////////////

  List<HomeTile> get homeTiles => _homeTiles;

  List<ChildTile> get childTiles => _childTiles;

  List<MonthlyTrans> get monthlyTrans => _monthlyTrans;

  ////////////////////////////////////////////////////////////  ADDERS  ////////////////////////////////////////////////////////////

  ////////////////////////////////////////////////////////////  REMOVERS  ////////////////////////////////////////////////////////////
}
