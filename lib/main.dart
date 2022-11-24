import 'package:flutter/material.dart';
import 'providers/task.dart';
import 'package:provider/provider.dart';

import 'screens/homepage.dart';

void main() => runApp(ToDoListApp());

class ToDoListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          accentColor: Colors.yellow[700],
          fontFamily: 'Lato',
          textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
                subtitle2: TextStyle(
                  color: Colors.blueGrey,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  titleMedium: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          ),
        ),
        title: ' To Do List',
        home: Homepage(),
      ),
    );
  }
}
