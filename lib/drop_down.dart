import 'package:drawomniglot/constants.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {

  final _formKey = GlobalKey<FormState>();
  final List<String> languages = [
    'Alphabet of the Magi',
    'Anglo-Saxon Runes',
    'Arcadian',
    'Armenian',
    'Asomtavruli',
    'Balinese',
    'Bengali',
    'Blackfoot',
    'Braille',
    'Burmese',
    'Cyrillic',
    'Early Aramaic',
    'Futurama',
    'Grantha',
    'Greek',
    'Gujarati',
    'Hebrew',
    'Inuktitut',
    'Japanese(Hiragana)',
    'Japanese(Katakana)',
    'Korean',
    'Latin',
    'Malay',
    'Mkhedruli',
    'N\'Ko',
    'Ojibwe',
    'Sanskrit',
    'Syriac',
    'Tagalog',
    'Tifinagh'
  ];

  // form values
  String _currentLanguages;

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Choose an alphabet',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          SizedBox(height: 10.0),
          DropdownButtonFormField(
            value: _currentLanguages ?? 'Latin',
            decoration: textInputDecoration,
            items: languages.map((language) {
              return DropdownMenuItem(
                value: language,
                child: Text('$language languages'),
              );
            }).toList(),
            onChanged: (val) => setState(() => _currentLanguages = val ),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
              color: Colors.indigo[900],
              child: Text(
                'Update',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                print(_currentLanguages);
              }
          ),
        ],
      ),
    );
  }
}