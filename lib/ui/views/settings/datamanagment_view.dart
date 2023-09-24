import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataManagmentView extends StatelessWidget {
  const DataManagmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CLargeTitle('Data managment'),
        leading: const PopBtn(),
      ),
      body: CSafeScreen(
        child: CSurface(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(children: [
            _buildItem('Total data', '23 MB', () {}),
            _buildItem('254 Transactions', '18 MB', () {})
          ]),
        ),
      ),
    );
  }

  Widget _buildItem(String title, String text, void Function()? onPressed) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CSmallTitle(title),
              Text(
                text,
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: onPressed,
            child: const FaIcon(
              FontAwesomeIcons.trashCan,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
