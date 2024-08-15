import 'package:clean_architecture_test/it.dart';
import 'package:clean_architecture_test/zFeature/presentation/blocs/user_cubit/user_cubit.dart';
import 'package:clean_architecture_test/zFeature/presentation/views/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(getIt()),
      child: MaterialApp(
        title: 'Flutter Clean Architecture',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Clean Architecture'),
      ),
    );
  }
}
