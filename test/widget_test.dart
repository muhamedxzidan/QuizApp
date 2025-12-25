// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:quizz_app/quizz_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const QuizzAppWidget());

    // Verify that our app shows the title.
    expect(find.text('Quizz App'), findsOneWidget);
    expect(find.text('Start Quiz'), findsOneWidget);

    // Verify that the counter (from the template) is not there.
    expect(find.text('0'), findsNothing);
  });
}
