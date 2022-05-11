import 'package:flutter/material.dart';
import 'package:money_managing_app/screens/category/Screen_Category.dart';
import 'package:money_managing_app/screens/home/widgets/bottom_navigation.dart';
import 'package:money_managing_app/screens/transactions/screen_transactions.dart';


class HomeScreen extends StatelessWidget {
const HomeScreen({ Key? key }) : super(key: key);

static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

final _pages = const[
  ScreenTransaction(),
  ScreenCategory(),
];
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MoneyManagerBottomNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Center(child: Text('Money Managing App')),
      ),
      body:  SafeArea(
        child: ValueListenableBuilder(valueListenable: selectedIndexNotifier, 
        builder: (BuildContext context,int updatedIndex, _) {
          return _pages[updatedIndex];
        }, 
        )
      ),
    );
  }
}