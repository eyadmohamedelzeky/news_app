import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:new_app/app/login_screen/presentation/widgets/custom_raw_material_button.dart';
import 'package:new_app/app/login_screen/presentation/widgets/custom_text_form_field.dart';
import 'package:new_app/app/register_screen/presentation/cubits/register_cubit/register_screen_cubit.dart';
import 'package:new_app/app/register_screen/presentation/cubits/visiable_password/visiable_password_cubit.dart';
import 'package:new_app/config/routes_names.dart';
import 'package:new_app/core/localization/localization.dart';
import 'package:new_app/gen/assets.gen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormBuilderState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  bool isValidEmail(String value) {
    // Basic email validation using regex
    const emailRegex = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
    return RegExp(emailRegex).hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VisiablePasswordCubit(),
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: FormBuilder(
            key: formKey,
            //autovalidateMode: AutovalidateMode.always,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      MyAssets.images.png.register1.path,
                      width: 200.w,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      context.localization.register,
                      style: TextStyle(fontSize: 25.sp, color: Colors.black),
                    ),
                    BlocProvider(
                      create: (context) => RegisterScreenCubit(),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: BlocBuilder<RegisterScreenCubit,
                            RegisterScreenState>(
                          builder: (context, state) {
                            final registerCubit =
                                BlocProvider.of<RegisterScreenCubit>(context);
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextFormField(
                                  onChanged: (value) {
                                    registerCubit.emailController.text =
                                        value ?? '';
                                    //emailController.text = value ?? '';
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return context.localization.email_empty;
                                    }
                                    if (isValidEmail(value)) {
                                      value =
                                          registerCubit.emailController.text;
                                      // value = emailController.text;
                                      FocusScope.of(context)
                                          .requestFocus(emailFocusNode);
                                      return null;
                                    }
                                    return 'Your Email Must Contain @ and .';
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  textEditingController: emailController,
                                  labelText:
                                      context.localization.email, // 'Email',
                                  hintText: context.localization
                                      .hint_email, //'Type your email',
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
                                    return CustomTextFormField(
                                      obscureText: cubit.obscureText,
                                      suffixIcon: IconButton(
                                        icon: cubit.suffixIcon,
                                        onPressed: () =>
                                            cubit.changeVisibility(),
                                      ),
                                      onChanged: (value) {
                                        registerCubit.passwordController.text =
                                            value ?? '';
                                        // passwordController.text = value ?? '';
                                      },
                                      autoFocus: true,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return context
                                              .localization.password_empty;
                                        } else if (value.isNotEmpty) {
                                          // FocusScope.of(context)
                                          //     .requestFocus(passwordFocusNode);
                                          value = registerCubit
                                              .passwordController.text;
                                          //value = passwordController.text;
                                        }
                                        return null;
                                      },
                                      textEditingController: passwordController,
                                      labelText: context
                                          .localization.password, //'Password',
                                      hintText: context.localization
                                          .hint_password, //'Enter your Password',
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomRawMaterialButton(
                                  textButton: context
                                      .localization.register, //'Register',
                                  onPressed: () async {
                                    if (formKey.currentState!.validate()) {
                                      try {
                                        if (state is RegisterScreenSuccess) {
                                          registerCubit.registerUser();
                                          snack(
                                            context,
                                            isSuccess: true,
                                            message: 'Register Success',
                                          );
                                          context.go(AppRouteName.loginScreen);
                                        } else {
                                          snack(
                                            context,
                                            isSuccess: false,
                                            message: 'Register Failure',
                                          );
                                        }
                                        //await registerUser();
                                      } on FirebaseAuthException catch (e) {
                                        debugPrint('FirebaseAuthException: $e');

                                        // debugPrint(
                                        //   'The Error Coming from ${e.code}',
                                        // );
                                        // snack(
                                        //   context,
                                        //   isSuccess: false,
                                        //   message:
                                        //       '${RegisterFailure(messageError: "${e.message}")}',
                                        // );

                                        // //  showSnackBar(context, e, e.code);
                                        // context.go(AppRouteName.loginScreen);
                                        // if (e.code != 'email-already-in-use') {
                                        //   snack(
                                        //     context,
                                        //     isSuccess: false,
                                        //     message:
                                        //         '${RegisterFailure(messageError: "${e.message}")}',
                                        //   );
                                        // showSnackBar(context, e, e.code);
                                        // }
                                      }
                                    }
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // void showSnackBar(
  //   BuildContext context,
  //   FirebaseAuthException e,
  //   String message,
  // ) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       // backgroundColor: Colors.red,
  //       showCloseIcon: true,
  //       content: Text(
  //         message,
  //       ),
  //     ),
  //   );
  // }
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
//   Future<void> registerUser() async {
//     final auth = FirebaseAuth.instance;
//     final scaffoldMessenger = ScaffoldMessenger.of(context);
//     final UserCredential userCredential =
//         await auth.createUserWithEmailAndPassword(
//       email: emailController.text,
//       password: passwordController.text,
//     );
//     debugPrint(
//       "This Email is${userCredential.user!.email}",
//     );
//   }
// }

