import 'package:flutter/material.dart';
import 'package:property_app/api/property_scoped_model.dart';
import 'package:property_app/screens/search.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final PropertyScopedModel propertyScopedModel = PropertyScopedModel();

  @override
  Widget build(BuildContext context) {
    propertyScopedModel.initializeValues();

    return ScopedModel<PropertyScopedModel>(
      model: propertyScopedModel,
      child: MaterialApp(
        title: 'Property Finder',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrange,
        ),
        home: SearchScreen(),
      ),
    );
  }
}