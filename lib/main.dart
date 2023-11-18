import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/app/app.dart';
import 'package:new_app/app/bloc_observer.dart';
import 'package:new_app/core/di/di.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await configureDependencies();
  runApp(const MyApp());
}
