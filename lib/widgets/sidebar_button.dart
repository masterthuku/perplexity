import 'package:flutter/material.dart';
import 'package:perplexity/theme/colors.dart';

class SidebarButton extends StatelessWidget {
  final bool isCollapsed;
  final IconData icon;
  final String text;
  const SidebarButton({
    super.key,
    required this.isCollapsed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(icon, color: AppColors.iconGrey, size: 40),
        ),
        isCollapsed
            ? const SizedBox()
            : Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
      ],
    );
  }
}
