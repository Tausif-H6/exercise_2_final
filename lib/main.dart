// TODO Fill in the following information
//
// SCSJ3623 Mobile Application Programming
// Exercise 2

// Pair Programming
// Member 1's Name: _____________    Matric:______________       Location: ____________ (i.e. where are you currently located)
// Member 2's Name: _____________    Matric:______________       Location: ____________
// Date and time (s):   _____________, _____________, __________   (Date and time you conducted the pair programming sessions)

import 'package:exercise_2_final/router.dart';
import 'package:flutter/material.dart';

import 'models/mock_todos.dart';
import 'screens/todo_list/todo_list_screen.dart';
// import 'screens/task_list/task_list_screen.dart'; //? Later you want to remove this line

void main() => runApp(
      MaterialApp(
        title: 'MAP Exercise 2',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        onGenerateRoute: createRoute,
      ),
    );
