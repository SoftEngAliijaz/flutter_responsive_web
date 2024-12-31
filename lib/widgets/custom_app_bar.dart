import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/constants/constants.dart';
import 'package:flutter_responsive_web/widgets/user_info_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  const CustomAppBar({
    super.key,
    required this.scrollController,
    required this.sectionKeys,
  });

  final ScrollController scrollController;
  final List<GlobalKey> sectionKeys;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  // Store hover states for each navbar item
  final Map<int, bool> _isHoveredMap = {};

  @override
  Widget build(BuildContext context) {
    final isResponsive = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return AppBar(
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
              ...navBarItems.map((v) {
                int index = navBarItems.indexOf(v);
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



//// now we will make a dummy push to check our repo is working fine or not
/// just for your confirmation guys
/// i am uploading this comments
/// hello guys please subscribe
/// 
/// you can use this side bar source control or you can also use commands ,,, first i will do by side bar source control
/// then i will do by commands