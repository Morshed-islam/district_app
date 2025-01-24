import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, dynamic>> categories = [
    {'icon': "https://gopalganjcity.site/district_info/uploads/hospital.png", 'label': 'হসপিটাল'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/3d-happy-cartoon-doctor-cartoon-doctor-on-transparent-background-generative-ai-png.png", 'label': 'ডক্টর'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/pngtree-ambulance-clipart-5-png-image_6004171.png", 'label': 'অ্যাম্বুলেন্স'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/205916.png", 'label': 'রক্তদাতা'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250109_232139.png", 'label': 'ডায়াগনস্টিক'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_105214.png", 'label': 'ফায়ার সার্ভিস'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_105439.png", 'label': 'থানা পুলিশ'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_105239.png", 'label': 'জরুরী সেবা'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/sign.png", 'label': 'বাড়ি ভাড়া'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250109_140209.png", 'label': 'গাড়ি ভাড়া'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_222359.png", 'label': 'পরিবহন'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_105604.png", 'label': 'ফ্লাট ও জমি'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_105828.png", 'label': 'চাকরি'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_105943.png", 'label': 'উদ্যোক্তা'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_110331.png", 'label': 'শিক্ষক'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_110530.png", 'label': 'মিস্ত্রি'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_223212.png", 'label': 'শিক্ষা প্রতিষ্ঠান'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_223528.png", 'label': 'বিদ্যুৎ অফিস'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_223856.png", 'label': 'কুরিয়ার সার্ভিস'},
    {'icon': "https://gopalganjcity.site/district_info/uploads/20250110_224221.png", 'label': 'পার্লার'},
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Chapainawabganj City', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),

      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/banner.jpeg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: .90,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    if(categories[index]['label']=="ডক্টর"){
                      Navigator.pushNamed(context, 'category_list');
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Coming soon!!!')));
                    }
                    log("Category Clicked ${categories[index]['label']}");
                  },
                  child: CategoryCard(
                    icon: categories[index]['icon'],
                    label: categories[index]['label'],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String icon;
  final String label;

  CategoryCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(icon,width: 80,height: 80,),
          SizedBox(height: 8),
          Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),

        ],
      ),
    );
  }
}
