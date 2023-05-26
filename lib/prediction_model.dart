import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Symptoms',
      home: SymptomsScreen(),
    );
  }
}

class SymptomsScreen extends StatefulWidget {
  @override
  _SymptomsScreenState createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  final List<String> symptoms = [
  'Null',
  'abdominal_pain',
  'acidity',
  'altered_sensorium',
  'anxiety',
  'back_pain',
  'blackheads',
  'bladder_discomfort',
  'blister',
  'bloody_stool',
  'blurred_and_distorted_vision',
  'breathlessness',
  'bruising',
  'burning_micturition',
  'chest_pain',
  'chills',
  'cold_hands_and_feets',
  'constipation',
  'continuous_feel_of_urine',
  'continuous_sneezing',
  'cough',
  'cramps',
  'dark_urine',
  'dehydration',
  'diarrhoea',
  'dischromic _patches',
  'distention_of_abdomen',
  'dizziness',
  'excessive_hunger',
  'extra_marital_contacts',
  'family_history',
  'fatigue',
  'foul_smell_of urine',
  'headache',
  'high_fever',
  'hip_joint_pain',
  'history_of_alcohol_consumption',
  'indigestion',
  'inflammatory_nails',
  'internal_itching',
  'irregular_sugar_level',
  'irritation_in_anus',
  'itching',
  'joint_pain',
  'knee_pain',
  'lack_of_concentration',
  'lethargy',
  'loss_of_appetite',
  'loss_of_balance',
  'mood_swings',
  'movement_stiffness',
  'mucoid_sputum',
  'muscle_wasting',
  'muscle_weakness',
  'nausea',
  'neck_pain',
  'nodal_skin_eruptions',
  'obesity',
  'pain_during_bowel_movements',
  'pain_in_anal_region',
  'painful_walking',
  'passage_of_gases',
  'patches_in_throat',
  'pus_filled_pimples',
  'red_sore_around_nose',
  'restlessness',
  'scurring',
  'shivering',
  'silver_like_dusting',
  'skin_peeling',
  'skin_rash',
  'small_dents_in_nails',
  'spinning_movements',
  'spotting_ urination',
  'stiff_neck',
  'stomach_pain',
  'sunken_eyes',
  'sweating',
  'swelling_joints',
  'swelling_of_stomach',
  'swollen_blood_vessels',
  'swollen_legs',
  'ulcers_on_tongue',
  'unsteadiness',
  'vomiting',
  'watering_from_eyes',
  'weakness_in_limbs',
  'weakness_of_one_body_side',
  'weight_gain',
  'weight_loss',
  'yellow_crust_ooze',
  'yellowing_of_eyes',
  'yellowish_skin'
  ];

  String? selectedSymptom1;
  String? selectedSymptom2;
  String? selectedSymptom3;
  String? selectedSymptom4;
  String? selectedSymptom5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptoms'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton(
              value: selectedSymptom1,
              items: symptoms.map((symptom) {
                return DropdownMenuItem(
                  child: Text(symptom),
                  value: symptom,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedSymptom1 = value as String;
                });
              },
            ),
            DropdownButton(
              value: selectedSymptom2,
              items: symptoms.map((symptom) {
                return DropdownMenuItem(
                  child: Text(symptom),
                  value: symptom,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedSymptom2 = value as String;
                });
              },
            ),
            DropdownButton(
              value: selectedSymptom3,
              items: symptoms.map((symptom) {
                return DropdownMenuItem(
                  child: Text(symptom),
                  value: symptom,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedSymptom3 = value as String;
                });
              },
            ),
            DropdownButton(
              value: selectedSymptom4,
              items: symptoms.map((symptom) {
                return DropdownMenuItem(
                  child: Text(symptom),
                  value: symptom,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedSymptom4 = value as String;
                });
              },
            ),
            DropdownButton(
              value: selectedSymptom5,
              items: symptoms.map((symptom) {
                return DropdownMenuItem(
                  child: Text(symptom),
                  value: symptom,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedSymptom5 = value as String;
                });
              },
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     // Convert the symptom data into JSON.
            //     // Map<String, String> symptomData = {
            //     //   'symptom1': selectedSymptom1,
            //     //   'symptom2': selectedSymptom2,
            //     //   'symptom3': selectedSymptom3,
            //     //   'symptom4': selectedSymptom4,
            //     //   'symptom5': selectedSymptom5,
            //     }, child: null,
            //     // String jsonData = json.encode(symptomData);
            //
            //     // Send the JSON data to the Flask application.
            //     // http.post('http://localhost:5000/symptoms' as Uri, body: jsonData);
            //   },
            //   child: Text('Search'),
            // ),
          ],
        ),
      ),
    );
  }
}