import 'package:flutter/material.dart';
import '../../_core/constants/drawer_items.dart';
import '../../_core/widgets/drawer_footer.dart';
import '../../_core/widgets/user_greeting.dart';
import '../../_core/widgets/drawer_item.dart';
import '../../_core/widgets/logout_button.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const UserGreeting(),
                  const Divider(),
                  ...drawerItems.map((title) => DrawerItem(title: title)),
                  const LogoutButton(),
                ],
              ),
            ),
          ),
          const DrawerFooter(),
        ],
      ),
    );
  }
}
