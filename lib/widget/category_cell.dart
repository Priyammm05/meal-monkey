import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';

class CategoryCell extends StatelessWidget {
  final Map catObj;
  final VoidCallback onTap;
  const CategoryCell({
    Key? key,
    required this.catObj,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                catObj["image"].toString(),
                width: 97,
                height: 97,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              catObj["name"].toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
