import 'package:flutter/material.dart';
import 'package:money_managing_app/screens/home/home.dart';

class MoneyManagerBottomNavigation extends StatelessWidget {
  const MoneyManagerBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            HomeScreen.selectedIndexNotifier.value = newIndex;
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Transactions'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Category'),
          ],
        );
      },
    );
  }
}
