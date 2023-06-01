import 'package:flutter/material.dart';
import 'package:inputs/constants/countries.dart';
import 'package:inputs/model/country.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  late final List<Country> _countries;
  String _query = '';
  @override
  void initState() {
    super.initState();
    _countries = countries.map((e) => Country.fromJson(e)).toList();
    // final countriesList = <Country>[];
    // for (final e in countries) {
    //   countriesList.add(Country.fromJson(e));
    // }
    // _countries = countriesList;
  }

  @override
  Widget build(BuildContext context) {
    late final List<Country> filteredList;
    if (_query.isEmpty) {
      filteredList = _countries;
    } else {
      filteredList = _countries
          .where(
            (e) => e.name.toLowerCase().contains(
                  _query.toLowerCase(),
                ),
          )
          .toList();
    }

    return Scaffold(
        appBar: AppBar(
          title: TextField(
            onChanged: (text) {
              _query = text;
              setState(() {});
            },
          ),
        ),
        body: ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: filteredList.length,
          itemBuilder: (context, index) {
            final country = filteredList[index];
            return ListTile(
              title: Text(country.name),
            );
          },
        ));
  }
}
