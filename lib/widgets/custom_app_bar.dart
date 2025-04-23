import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/constants/constants.dart';
import 'package:flutter_responsive_web/widgets/user_info_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.scrollController,
    required this.sectionKeys,
  });

  final ScrollController scrollController;
  final List<GlobalKey> sectionKeys;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  // Store hover states for each navbar item
  final Map<int, bool> _isHoveredMap = {};

  @override
  Widget build(BuildContext context) {
    final isResponsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      leading: isResponsive
          ? Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlutterLogo(size: 50.0),
            )
          : null,
      title: isResponsive
          ? null
          : Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlutterLogo(size: 50.0),
              ),
            ),
      actions: isResponsive
          ? [
              ...AppConstants.navBarItems.map((v) {
                int index = AppConstants.navBarItems.indexOf(v);
                return MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _isHoveredMap[index] = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _isHoveredMap[index] = false;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: InkWell(
                      onTap: () {
                        Scrollable.ensureVisible(
                          widget.sectionKeys[index].currentContext!,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      child: Container(
                        height: 50.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          // ignore: deprecated_member_use
                          color: Colors.black.withOpacity(0.1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                v,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              height: 1.0,
                              width: _isHoveredMap[index] == true ? 50.0 : 10.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
              const UserInfoCard(),
            ]
          : [
              const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('JS', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(width: 10.0),
            ],
    );
  }
}
