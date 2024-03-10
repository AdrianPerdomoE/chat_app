// packages
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
//services
import '../services/database_service.dart';
import '../services/navigation_service.dart';

class AuthenticationProvider extends ChangeNotifier {
  late final FirebaseAuth _auth;
  late final DatabaseService _databaseService;
  late final NavigationSevice _navigationSevice;

  AuthenticationProvider() {
    _auth = FirebaseAuth.instance;
    _navigationSevice = GetIt.instance.get<NavigationSevice>();
    _databaseService = GetIt.instance.get<DatabaseService>();
  }
}
