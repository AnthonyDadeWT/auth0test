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
    },
  );
}
