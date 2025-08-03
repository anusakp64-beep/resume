import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume App',
      home: const ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Resume'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/S__9535499.jpg'), // ใส่รูปที่โฟลเดอร์ assets
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                'อนุศักดิ์ ผลาปีย์',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Text('🏠 ภูมิลำเนา: จังหวัดสุโขทัย'),
            const SizedBox(height: 4),
            Text('🎯 งานอดิเรก: อ่านหนังสือ, เล่นเกม, เขียนโปรแกรม'),
            const SizedBox(height: 16),
            const Divider(),
            const Text(
              '📘 ประวัติการศึกษา',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ListTile(
              title: Text('ประถมศึกษา'),
              subtitle: Text('โรงเรียนบ้านไทยชนะศึก - ปีที่จบ: 2557'),
            ),
            ListTile(
              title: Text('มัธยมต้น'),
              subtitle: Text('โรงเรียนชัยมงคลพิทยา - ปีที่จบ: 2560'),
            ),
            ListTile(
              title: Text('มัธยมปลาย'),
              subtitle: Text('โรงเรียนชัยมงคลพิทยา - ปีที่จบ: 2563'),
            ),
          ],
        ),
      ),
    );
  }
}
