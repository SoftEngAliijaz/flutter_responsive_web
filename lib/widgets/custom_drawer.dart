import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/constants/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.scrollController,
    required this.sectionKeys,
  });

  final ScrollController scrollController;
  final List<GlobalKey> sectionKeys;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                  child:
                      Text('Header', style: TextStyle(color: Colors.white)))),
          ...navBarItems.map((v) {
            int index = navBarItems.indexOf(v);

            return ListTile(
              onTap: () {
                Scrollable.ensureVisible(sectionKeys[index].currentContext!,
                    duration: Duration(seconds: 1));
                Navigator.of(context).pop();
              },
              leading: Icon(Icons.abc_outlined),
              title: Text(v),
              trailing: Icon(Icons.arrow_forward_outlined),
            );
          })
        ],
      ),
    );
  }
}
