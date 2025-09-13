import 'package:flutter/material.dart';
import 'package:perplexity/theme/colors.dart';

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
      width: isCollapsed ? 64 : 128,
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
                const Icon(
                  Icons.auto_awesome_mosaic,
                  color: AppColors.whiteColor,
                  size: 40,
                ),
                const SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.iconGrey,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(
                    Icons.search,
                    color: AppColors.iconGrey,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(
                    Icons.language,
                    color: AppColors.iconGrey,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(
                    Icons.auto_awesome,
                    color: AppColors.iconGrey,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(
                    Icons.cloud_outlined,
                    color: AppColors.iconGrey,
                    size: 40,
                  ),
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
