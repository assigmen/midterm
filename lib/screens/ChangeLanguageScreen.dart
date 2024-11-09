import 'package:flutter/material.dart';
import '../main.dart';
import '/services/localization.dart';

class ChangeLanguageScreen extends StatefulWidget {
  @override
  _ChangeLanguageScreenState createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  bool _isKhmer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Language')),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Search Language'),
          ),
          SwitchListTile(
            title: Text('Switch Language'),
            value: _isKhmer,
            onChanged: (bool value) {
              setState(() {
                _isKhmer = value;
                // Update the app locale dynamically
                Locale newLocale = _isKhmer ? Locale('kh') : Locale('en');
                MyApp.setLocale(context, newLocale);
              });
            },
          ),
        ],
      ),
    );
  }
}
