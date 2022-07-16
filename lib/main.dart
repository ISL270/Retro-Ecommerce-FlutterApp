import 'package:flutter/material.dart';
import 'constants/color_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streetwear_ecommerce_app/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: const MyHomePage(title: 'Streetwear E-commerce app'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.lightBGC,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Streetwear',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
              ],
            ),
            const Center(
              child: ProductCard(),
            ),
          ],
        ),
      ),
    );
  }
}
