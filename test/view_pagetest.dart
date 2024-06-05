import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app_hospital_main/view_page.dart';  

void main() {
  testWidgets('ViewPage displays correct information', (WidgetTester tester) async {
    // Menentukan data pengujian
    const testName = 'Surya Guntur';
    const testBirthPlace = 'Situbondo';
    const testBirthDate = '20-10-2002';
    const testGender = 'Male';
    const testPhoneNumber = '123-456-7890';
    const testEmail = 'surya@gmail.com';
    const testReligion = 'islam';
    const testJob = 'Software Developer';
    const testAddress = '123 Test';
    const testPolyclinic = 'Perawat';

    // Buat widget
    await tester.pumpWidget(
      const MaterialApp(
        home: ViewPage(
          name: testName,
          birthplace: testBirthPlace,
          birthdate: testBirthDate,
          gender: testGender,
          phonenumber: testPhoneNumber,
          email: testEmail,
          religion: testReligion,
          job: testJob,
          address: testAddress,
          polyclinic: testPolyclinic,
        ),
      ),
    );

    // Verifikasi bahwa setiap informasi ditampilkan dengan benar
    expect(find.text('Name: $testName'), findsOneWidget);
    expect(find.text('Birth Place: $testBirthPlace'), findsOneWidget);
    expect(find.text('Birht Date: $testBirthDate'), findsOneWidget);  
    expect(find.text('Gender: $testGender'), findsOneWidget);
    expect(find.text('Phone Number: $testPhoneNumber'), findsOneWidget);
    expect(find.text('Email: $testEmail'), findsOneWidget);
    expect(find.text('Religion: $testReligion'), findsOneWidget);
    expect(find.text('Job: $testJob'), findsOneWidget);
    expect(find.text('Address: $testAddress'), findsOneWidget);
    expect(find.text('Polyclinic: $testPolyclinic'), findsOneWidget);
  });
}
