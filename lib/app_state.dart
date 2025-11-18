import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _nome = prefs.getString('ff_nome') ?? _nome;
    });
    _safeInit(() {
      _idCliente = prefs.getInt('ff_idCliente') ?? _idCliente;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _nome = '';
  String get nome => _nome;
  set nome(String value) {
    _nome = value;
    prefs.setString('ff_nome', value);
  }

  int _idCliente = 0;
  int get idCliente => _idCliente;
  set idCliente(int value) {
    _idCliente = value;
    prefs.setInt('ff_idCliente', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
