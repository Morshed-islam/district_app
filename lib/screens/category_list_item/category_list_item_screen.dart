import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/doctor_model.dart';

class CategoryListItemScreen extends StatefulWidget {
  const CategoryListItemScreen({super.key});

  @override
  State<CategoryListItemScreen> createState() => _CategoryListItemScreenState();
}

class _CategoryListItemScreenState extends State<CategoryListItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text('ডক্টরস তালিকা', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
        ),
        body: ListView.builder(
            itemCount: doctorsList.length,
            itemBuilder: (context, index) {
              final doctor = doctorsList[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SizedBox(
                          child: Image.network(
                            'https://gopalganjcity.site/district_info/uploads/3d-happy-cartoon-doctor-cartoon-doctor-on-transparent-background-generative-ai-png.png',
                            width: 100,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              width: 220,
                              child: Text(
                                doctor.name,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            width: 200,
                            child: Text(
                              doctor.designation,
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                doctor.location,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.grey.shade700),
                              ),
                            ),
                          ),


                        ],
                      ),

                      InkWell(
                        onTap: (){
                          showPhoneNumberDialog(context, doctor);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.call, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}

void showPhoneNumberDialog(BuildContext context, Doctor doctor) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('${doctor.name} - ফোন নম্বর'),
        content: doctor.phoneNumbers.isNotEmpty
            ? Column(
          mainAxisSize: MainAxisSize.min,
          children: doctor.phoneNumbers
              .map((number) => ListTile(
            title: Text(number),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                log("calling ${convertBanglaToEnglish(number)}");
                _makePhoneCall(convertBanglaToEnglish(number));
              },
            ),
          ))
              .toList(),
        )
            : Text('কোনো ফোন নম্বর নেই'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('বন্ধ করুন'),
          ),
        ],
      );
    },
  );
}

Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri _phoneUri = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunch(_phoneUri.toString())) {
    await launch(_phoneUri.toString());
  } else {
    throw 'Could not launch $phoneNumber';
  }
}

String convertBanglaToEnglish(String input) {
  Map<String, String> banglaToEnglishMap = {
    '০': '0', '১': '1', '২': '2', '৩': '3', '৪': '4', '৫': '5', '৬': '6', '৭': '7', '৮': '8', '৯': '9'
  };

  String result = '';

  for (int i = 0; i < input.length; i++) {
    String character = input[i];
    result += banglaToEnglishMap[character] ?? character;
  }

  return result;
}