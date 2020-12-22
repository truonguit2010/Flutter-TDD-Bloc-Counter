import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd_bloc_counter/app.dart';
import 'package:flutter_tdd_bloc_counter/counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const CounterApp());
}