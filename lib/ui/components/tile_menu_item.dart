import 'package:flutter/material.dart';

class TileMenuItem extends StatelessWidget {
  const TileMenuItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.onPressed,
  });

  final String title;
  final String? subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        constraints: BoxConstraints(minHeight: 55, minWidth: .infinity),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: .w600, color: Colors.black),
                  ),
                  if (subtitle != null)
                    Text(subtitle!, style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
            Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
    );
  }
}
