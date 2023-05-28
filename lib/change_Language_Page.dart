import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/LanguageChangeProvider.dart';
import 'package:provider/provider.dart';
import 'screens/global_variables.dart' as globals;

class changeLanguage extends StatefulWidget {
  const changeLanguage({Key? key}) : super(key: key);

  @override
  State<changeLanguage> createState() => _changeLanguageState();
}

// class LanguageSingleton{
//   static final LanguageSingleton _singleton = LanguageSingleton._internal();
//   String selectedLanguageCode = '';
//
//   factory LanguageSingleton() {
//     return _singleton;
//   }
//
//   LanguageSingleton._internal();
//
// }

class _changeLanguageState extends State<changeLanguage> {
  late String _selectedLanguage;

  // void _updateLanguagecode(code){
  //   return code;
  // }
// List<String> _languages = ['English', 'Assamese', 'Hindi'];
//
//   void _onLanguageSelected(String language) {
//     setState(() {
//       _selectedLanguage = language;
//     });
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your Language'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                // _selectedLanguage = 'en';
                context.read<LanguageChangeProvider>().changeLocale("en");
                globals.selectedLanguageCode='en';
                // _updateLanguagecode('en');
              });
              Navigator.pushNamed(context, '/login');
            },
            child: Text('English'),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(100,40)
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // _selectedLanguage = 'as';
                context.read<LanguageChangeProvider>().changeLocale("as");
                globals.selectedLanguageCode='as';
                // _updateLanguagecode('as');
              });
              Navigator.pushNamed(context, '/login');
            },
            child: Text('অসমীয়া'),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(100,40)
            ),
          ),
        ],
      ),
    );
  }
}


//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Choose Your Language:',
//       home: Scaffold(
//         body: Center(
//           child: DropdownButton(
//             value: _selectedLanguage,
//             items: _languages.map((language) {
//               return DropdownMenuItem(
//                 value: language,
//                 child: Text(language),
//               );
//             }).toList(),
//             onChanged: context.read<LanguageChangeProvider>().changeLocale(_selectedLanguage)
//           ),
//         ),
//       ),
//     );
//   }
// }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(
  //         "Select language",
  //       ),
  //     ),
  //     body: _buildLanguagesList(),
  //   );
  // }

//   _buildLanguagesList() {
//     return ListView.builder(
//       itemCount: languagesList.length,
//       itemBuilder: (context, index) {
//         return _buildLanguageItem(languagesList[index]);
//       },
//     );
//   }
//
//   _buildLanguageItem(String language) {
//     return InkWell(
//       onTap: () {
//         print(language);
//         application.onLocaleChanged(Locale(languagesMap[language]));
//       },
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20.0),
//           child: Text(
//             language,
//             style: TextStyle(
//               fontSize: 24.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//


// class changeLanguage extends StatelessWidget {
//   const changeLanguage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Row(
//               children: [
//                 ElevatedButton(
//               onPressed:(){
//             context.read<LanguageChangeProvider>().changeLocale('as');
//           },
//               child: Text("Assamese")),
//          // child: ElevatedButton(
//               onPressed: (){
//             context.read<LanguageChangeProvider>().changeLocale('en');
//           },
//                   child: Text("English")),
//           child: ElevatedButton(
//               onPressed: () => _pushPage(context, const FirebaseAuth()),
//               child: Text("Continue"))
//           )
//     ];
//       )
//     );
//   }
//   void _pushPage(BuildContext context, Widget page) {
//     Navigator.of(context).push(
//       MaterialPageRoute<void>(builder: (_) => page),
//     );
//   }
// }
