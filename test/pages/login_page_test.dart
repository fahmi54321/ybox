import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('Login page test',(tester) async{

    const childWidget = Padding(padding: EdgeInsets.all(24.0));

    await tester.pumpWidget(SingleChildScrollView(child: childWidget,));

    final buildForm = find.byWidget(childWidget);
    
    expect(buildForm, findsOneWidget);

  });
}