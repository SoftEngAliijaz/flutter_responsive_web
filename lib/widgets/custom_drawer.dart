import 'package:cached_network_image/cached_network_image.dart';
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
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        AppConstants.homeScreenBgImage),
                    fit: BoxFit.cover,
                    opacity: 0.60),
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage(AppConstants.homeScreenMainTileImage)),
                  SizedBox(height: 10),
                  Text(
                    'Welcome, User!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ))),
          ...AppConstants.navBarItems.asMap().entries.map((entry) {
            int textIndex = entry.key;
            String v = entry.value;
            IconData icon = AppConstants.navBarItemsIcon[textIndex];

            return ListTile(
              onTap: () {
                Scrollable.ensureVisible(sectionKeys[textIndex].currentContext!,
                    duration: Duration(seconds: 1));
                Navigator.of(context).pop();
              },
              leading: Icon(icon),
              title: Text(v),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            );
          }).followedBy([
            ListTile(title: Divider()),
            ListTile(
              title: Text(
                '© 2025 TechSolNexa',
                style: TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
