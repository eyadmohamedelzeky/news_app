import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRawMaterialButton extends StatelessWidget {
  const CustomRawMaterialButton({
    super.key,
    required this.textButton,
    required this.onPressed,
  });
  final void Function()? onPressed;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: double.infinity,
      child: RawMaterialButton(
        fillColor: Colors.blue,
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5.r),
        ),
        onPressed: onPressed,
        child: Text(
          textButton,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
