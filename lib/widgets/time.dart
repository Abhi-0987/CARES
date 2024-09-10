import 'package:flutter/material.dart';
import 'dart:async';

class TimerProvider extends ChangeNotifier {
  double _currentPercentage = 0.0;
  int _currentDay = 0;
  Timer? _timer;

  void startTimer(double initialPercentage) {
    _currentPercentage = initialPercentage;
    _currentDay = 0;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(hours: 24), (timer) {
      // print('timer started');
      _currentPercentage += 0.1;
      _currentDay += 1;
      if (_currentPercentage > 1.0 || _currentDay == 10) {
        _currentPercentage = 1.0;
        _currentDay = 10;
        _timer?.cancel();
        // print('timer stopped');
      }
      notifyListeners(); // Notify listeners about changes
    });
  }

  double get currentPercentage => _currentPercentage;
  int get currentDay => _currentDay;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
