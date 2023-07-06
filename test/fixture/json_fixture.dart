import 'dart:io';

String jsonFixture(String name) =>
    File('test/fixture/$name').readAsStringSync();
