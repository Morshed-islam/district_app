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

  /*
  * (11, 'হসপিটাল', 'https://gopalganjcity.site/district_info/uploads/hospital.png'),
(12, 'ডক্টর', 'https://gopalganjcity.site/district_info/uploads/3d-happy-cartoon-doctor-cartoon-doctor-on-transparent-background-generative-ai-png.png'),
(13, 'অ্যাম্বুলেন্স', 'https://gopalganjcity.site/district_info/uploads/pngtree-ambulance-clipart-5-png-image_6004171.png'),
(14, 'রক্তদাতা', 'https://gopalganjcity.site/district_info/uploads/205916.png'),
(15, 'ডায়াগনস্টিক', 'https://gopalganjcity.site/district_info/uploads/20250109_232139.png'),
(17, 'ফায়ার সার্ভিস', 'https://gopalganjcity.site/district_info/uploads/20250110_105214.png'),
(18, 'থানা পুলিশ', 'https://gopalganjcity.site/district_info/uploads/20250110_105439.png'),
(19, 'জরুরী সেবা', 'https://gopalganjcity.site/district_info/uploads/20250110_105239.png'),
(26, 'বাড়ি ভাড়া', 'https://gopalganjcity.site/district_info/uploads/sign.png'),
(27, 'গাড়ি ভাড়া', 'https://gopalganjcity.site/district_info/uploads/20250109_140209.png'),
(28, 'পরিবহন', 'https://gopalganjcity.site/district_info/uploads/20250110_222359.png'),
(29, 'ফ্লাট ও জমি', 'https://gopalganjcity.site/district_info/uploads/20250110_105604.png'),
(30, 'চাকরি', 'https://gopalganjcity.site/district_info/uploads/20250110_105828.png'),
(31, 'উদ্যোক্তা', 'https://gopalganjcity.site/district_info/uploads/20250110_105943.png'),
(32, 'শিক্ষক', 'https://gopalganjcity.site/district_info/uploads/20250110_110331.png'),
(33, 'মিস্ত্রি', 'https://gopalganjcity.site/district_info/uploads/20250110_110530.png'),
(34, 'শিক্ষা প্রতিষ্ঠান', 'https://gopalganjcity.site/district_info/uploads/20250110_223212.png'),
(35, 'বিদ্যুৎ অফিস', 'https://gopalganjcity.site/district_info/uploads/20250110_223528.png'),
(36, 'কুরিয়ার সার্ভিস', 'https://gopalganjcity.site/district_info/uploads/20250110_223856.png'),
(37, 'পার্লার', 'https://gopalganjcity.site/district_info/uploads/20250110_224221.png');*/

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
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpTQZ2ymiyWERMbA6iLXtu-GdpqGqVpWKlLg&s',
                height: 150,
                width: double.infinity,
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
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return CategoryCard(
                  icon: categories[index]['icon'],
                  label: categories[index]['label'],
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
        ],
      ),
    );
  }
}
