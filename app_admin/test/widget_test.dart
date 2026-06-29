import 'package:flutter_test/flutter_test.dart';
import 'package:fulltech_admin/main.dart';

void main() {
  testWidgets('shows admin login screen', (tester) async {
    await tester.pumpWidget(const FulltechAdminApp());

    expect(find.text('Administracion Fulltech'), findsOneWidget);
    expect(find.text('Entrar'), findsOneWidget);
  });
}
