import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sale/application/category_bloc/category_bloc.dart';
import 'package:sale/application/product_bloc/product_bloc.dart';
import 'package:sale/application/user_bloc/user_bloc.dart';
import 'package:sale/core/route/nav_route.dart';
import 'package:sale/domain/repository/category_repo.dart';
import 'package:sale/domain/repository/product_repo.dart';
import 'package:sale/domain/repository/user_repo.dart';
import 'package:sale/infrastructure/api_calls/category_api.dart';
import 'package:sale/infrastructure/api_calls/product_api.dart';
import 'package:sale/infrastructure/api_calls/userdata_api.dart';
import 'application/signup_bloc/sign_up_bloc.dart';
import 'domain/repository/authentication_repo.dart';
import 'infrastructure/api_calls/authentication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Authentication auth = SignUpAuthentication();
    final ProductRepo product = ProductRepoImplementation();
    final CategoryRepo category = CategoryRepoImplement();
    final UserRepo userRepo=UserDataImplement();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpBloc(auth),
        ),
        BlocProvider(
          create: (context) => ProductBloc(product),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(category),
        ),
        BlocProvider(
          create: (context) => UserBloc(userRepo),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            appBarTheme: const AppBarTheme(backgroundColor: Colors.grey)),
        initialRoute: 'splash',
        onGenerateRoute: RouteGenerator().generateRoute,
      ),
    );
  }
}
