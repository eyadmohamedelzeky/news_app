import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:new_app/config/routes_names.dart';
import 'package:new_app/core/localization/localization.dart';

class CustomSignUpRow extends StatelessWidget {
  const CustomSignUpRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.localization.donnot_have_an_account,
          style: TextStyle(fontSize: 15.sp),
        ),
        TextButton(
          child: Text(
            context.localization.sign_up,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.blue,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
          onPressed: () {
            context.push(AppRouteName.registerScreen);
          },
        ),
      ],
    );
  }
}
