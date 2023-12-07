import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:new_app/app/login_screen/presentation/cubit/login_screen_cubit.dart';
import 'package:new_app/app/login_screen/presentation/widgets/custom_raw_material_button.dart';
import 'package:new_app/app/login_screen/presentation/widgets/custom_sign_up_row.dart';
import 'package:new_app/app/login_screen/presentation/widgets/custom_text_form_field.dart';
import 'package:new_app/app/register_screen/presentation/cubits/visiable_password/visiable_password_cubit.dart';
import 'package:new_app/app/splash_screen/presentation/cubit/language_cubit/language_cubit.dart';
import 'package:new_app/config/routes_names.dart';
import 'package:new_app/core/localization/localization.dart';
import 'package:new_app/gen/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormBuilderState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  bool isvalue = false;

  bool isValidEmail(String value) {
    // Basic email validation using regex
    const emailRegex = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
    return RegExp(emailRegex).hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    final cubitLanguage = BlocProvider.of<LanguageCubit>(context);
    return BlocProvider(
      create: (context) => VisiablePasswordCubit(),
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: FormBuilder(
            key: formKey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SwitchListTile(
                      title: Text(
                        'Language ',
                        style: TextStyle(color: Colors.white, fontSize: 15.sp),
                      ),
                      activeColor:
                          cubitLanguage.isChanged ? Colors.red : Colors.green,
                      onChanged: (value) {
                        setState(() {
                          cubitLanguage.changeLanguage(value);
                        });
                      },
                      value: cubitLanguage.state is LanguageScuessEn,
                    ).animate(
                      autoPlay: true,
                      effects: [
                        const FadeEffect(
                          curve: Curves.fastEaseInToSlowEaseOut,
                          duration: Duration(
                            seconds: 4,
                          ),
                        ),
                        const ScaleEffect(
                          curve: Curves.fastEaseInToSlowEaseOut,
                          duration: Duration(
                            seconds: 4,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ).fade(
                      duration: const Duration(
                        seconds: 4,
                      ),
                    ),
                    Image.asset(
                      MyAssets.images.png.llogin.path,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      context.localization.login,
                      style: TextStyle(fontSize: 25.sp, color: Colors.black),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: BlocProvider(
                        create: (context) => LoginScreenCubit(),
                        child: BlocBuilder<LoginScreenCubit, LoginScreenState>(
                          builder: (context, state) {
                            final cubit =
                                BlocProvider.of<LoginScreenCubit>(context);
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextFormField(
                                  onChanged: (value) {
                                    cubit.emailController.text = value ?? '';
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return context.localization.email_empty;
                                    }
                                    if (isValidEmail(value)) {
                                      value = emailController.text;
                                      FocusScope.of(context)
                                          .requestFocus(emailFocusNode);
                                      return null;
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  textEditingController: cubit.emailController,
                                  labelText: context.localization.email,
                                  hintText: context.localization.hint_email,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                BlocBuilder<VisiablePasswordCubit,
                                    VisiablePasswordState>(
                                  builder: (context, state) {
                                    final cubit =
                                        BlocProvider.of<VisiablePasswordCubit>(
                                      context,
                                    );
                                    final cubitLogin =
                                        BlocProvider.of<LoginScreenCubit>(
                                      context,
                                    );
                                    return CustomTextFormPassword(
                                      cubit: cubit,
                                      cubitLogin: cubitLogin,
                                      passwordFocusNode: passwordFocusNode,
                                      passwordController: passwordController,
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomRawMaterialButton(
                                  textButton: context.localization.login,
                                  onPressed: () async {
                                    if (formKey.currentState!.validate()) {
                                      try {
                                        await cubit.signInUser();
                                        if (cubit.state is LoginScreenSuccess) {
                                          snack(
                                            context,
                                            isSuccess: true,
                                            message: 'Login Successfully',
                                          );
                                          context.go(AppRouteName.homeScreen);
                                        } else {
                                          snack(
                                            context,
                                            isSuccess: false,
                                            message: 'Login Failed',
                                          );
                                        }
                                      } on FirebaseAuthException catch (e) {
                                        debugPrint('FirebaseAuthException: $e');
                                        // showSnackBar(
                                        //   context,
                                        //   e,
                                        //   e.message ?? 'There is an Error',
                                        // );
                                        // if (e.code == 'user-not-found') {
                                        //   debugPrint(
                                        //     'The e.code is From Email ${e.code}',
                                        //   );
                                        //   showSnackBar(
                                        //     context,
                                        //     e,
                                        //     e.code,
                                        //   );
                                        // } else if (e.code == 'wrong-password') {
                                        //   debugPrint(
                                        //     'The e.code From Password ${e.code}',
                                        //   );
                                        //   showSnackBar(
                                        //     context,
                                        //     e,
                                        //     e.code,
                                        //   );
                                        // }
                                      }
                                    }
                                  },
                                ),
                                const CustomSignUpRow(),
                              ],
                            ).animate(
                              autoPlay: true,
                              effects: [
                                const FadeEffect(
                                  curve: Curves.fastEaseInToSlowEaseOut,
                                  duration: Duration(
                                    seconds: 4,
                                  ),
                                ),
                                const ScaleEffect(
                                  curve: Curves.fastEaseInToSlowEaseOut,
                                  duration: Duration(
                                    seconds: 4,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ).fade(
                              duration: const Duration(
                                seconds: 4,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void snack(
    BuildContext context, {
    required bool isSuccess,
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isSuccess ? Colors.green : Colors.red,
      ),
    );
  }
}

class CustomTextFormPassword extends StatelessWidget {
  const CustomTextFormPassword({
    super.key,
    required this.cubit,
    required this.cubitLogin,
    required this.passwordFocusNode,
    required this.passwordController,
  });

  final VisiablePasswordCubit cubit;
  final LoginScreenCubit cubitLogin;
  final FocusNode passwordFocusNode;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: cubit.obscureText,
      suffixIcon: IconButton(
        onPressed: () => cubit.changeVisibility(),
        icon: cubit.suffixIcon,
      ),
      onChanged: (value) {
        cubitLogin.passwordController.text = value ?? '';
      },
      autoFocus: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.localization.password_empty;
        } else if (value.isNotEmpty) {
          FocusScope.of(context).requestFocus(passwordFocusNode);
          value = cubitLogin.passwordController.text;
        }
        return null;
      },
      textEditingController: passwordController,
      labelText: context.localization.password,
      hintText: context.localization.hint_password,
    );
  }
}
