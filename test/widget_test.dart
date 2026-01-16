import 'package:flutter_test/flutter_test.dart';
import 'package:rickandmortyapp/main.dart';

void main() {
  testWidgets('Welcome page smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const RickAndMortyApp());
    expect(find.text('Rick and Morty Wiki'), findsOneWidget);
    expect(find.text("Let's Get Started"), findsOneWidget);
  });
}
