import 'package:flutter/material.dart';
import 'package:perplexity/theme/colors.dart';
import 'package:perplexity/widgets/sidebar_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isCollapsed ? 64 : 170,
      color: AppColors.sideNav,
      child: Column(
        crossAxisAlignment: isCollapsed
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          // Top + Middle icons
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      margin: isCollapsed
                          ? EdgeInsets.symmetric(horizontal: 10)
                          : const EdgeInsets.symmetric(horizontal: 50),
                      child: Icon(
                        Icons.auto_awesome_mosaic,
                        color: AppColors.whiteColor,
                        size: isCollapsed ? 40 : 60,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.add,
                  text: "Home",
                ),
                const SizedBox(height: 24),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.search,
                  text: "Search",
                ),
                const SizedBox(height: 24),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.language,
                  text: "Language",
                ),
                const SizedBox(height: 24),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.auto_awesome,
                  text: 'Discover',
                ),
                const SizedBox(height: 24),
                SidebarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.cloud_outlined,
                  text: "Library",
                ),
              ],
            ),
          ),

          // Bottom icon
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16), // optional padding
                child: Icon(
                  isCollapsed
                      ? Icons.keyboard_arrow_right
                      : Icons.keyboard_arrow_left,
                  color: AppColors.iconGrey,
                  size: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
