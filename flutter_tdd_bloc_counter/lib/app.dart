

import 'package:flutter/material.dart';
import 'package:flutter_tdd_bloc_counter/counter/view/counter_page.dart';


class CounterApp extends MaterialApp {

  const CounterApp({Key key}) : super (key: key, home: const CounterPage());
}