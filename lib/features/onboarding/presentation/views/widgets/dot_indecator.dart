import 'package:flutter/material.dart';

class DotIndecator extends StatelessWidget {
  const DotIndecator({super.key, required this.isCurrentPage});
  final bool isCurrentPage;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 25,
      height: 4,
      decoration: BoxDecoration(
        color: isCurrentPage
            ? Color(0xffAFAFAF)
            : Color(0xffAFAFAF).withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(2),
      ),
      duration: Duration(milliseconds: 300),
    );
  }
}
