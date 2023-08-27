import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/panthalassa/businesslogic/biography_bloc.dart';
import 'package:newsapplication/panthalassa/data/repositories/biography_repository.dart';
import 'package:newsapplication/panthalassa/presentation/screens/biography/ui/biographyscreen.dart';

class RouteGenerator {
  final BiographypageBloc _homepageBloc = BiographypageBloc(BiographyPageRepo());
  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<BiographypageBloc>.value(
            value: _homepageBloc,
            child: const BiographyPage(),
          ),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
