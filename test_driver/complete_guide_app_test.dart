import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main(){
  group('Complete Guide App', () {
    final questionTextFinder = find.byValueKey('question');
    final answer1RaisedButtonFinder = find.byValueKey('answer1');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('starts at question 1', () async {
      var question = await driver.getText(questionTextFinder);
      expect(question, 'What\'s your favorite color?');
    });

    test('clicking answer increments question', () async {
      await driver.tap(answer1RaisedButtonFinder);
      var question = await driver.getText(questionTextFinder);
      expect(question, 'What\'s your favorite animal?');
    });

  });

}