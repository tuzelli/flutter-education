import 'package:flutter/material.dart';
import 'package:venhancer_education/202/welcome_page.dart';

class CoreButton extends StatelessWidget {
  const CoreButton({super.key, required this.title, required this.callback});
  final String title;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Container(
        width: (size.width - 32) / 2,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(111),
        ),
        child: Center(
          child: Text(title, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
