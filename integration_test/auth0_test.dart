import 'dart:io';

import 'package:auth0test/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'counter state is the same after going to home and switching apps',
    (tester) async {
      await tester.pumpWidget(MyApp());

      await tester.tap(find.byKey(Key("auth0login")));

      await tester.native
          .tap(Selector(text: "Continue"), appId: "com.apple.springboard");

      await Future.delayed(Duration(seconds: 5));

      // This works
      //await tester.native.tap(Selector(text: "Forgot password?"));

      // But these do not?
      //await tester.native.tap(Selector(className: "textField"));
      await tester.native.enterText(Selector(className: "textField"), text: "hello");
    },
  );
}
