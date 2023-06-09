import 'package:idcard/models/user.dart';
import 'package:idcard/screens/sign_in.dart';
import 'package:idcard/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users?>(context);
    if (user == null) {
      return signin();
    } else {
      return Home();
    }
  }
}
