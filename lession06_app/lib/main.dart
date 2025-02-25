// Buoc 1: Khai bao import thu vien
// - Widget là xây dựng giao diện người dùng

// Bước 2: Main function
// - runApp() là hàm chạy ứng dụng Flutter
// - MyApp() là widget gốc của ứng dụng
import 'package:flutter/material.dart';

void main() {
  //Bước 3: Khởi động appapp
  runApp(
    MaterialApp(
      //Bước 4: Sử dụng thành phần để xây dựng giao diện gười dùng
      home: SafeArea(
        child: Scaffold(
          body: Center(child: MyWidget(false)),
          // appBar: AppBar(
          //   backgroundColor: Colors.red,
          //   title: Text('Tu hoc Flutter'),
          // ),
          // body: const Center(child: Text('Hello World')),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyWidget extends StatelessWidget {
  final bool loading;

  const MyWidget(this.loading, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // if (loading == true) {
    //   return const CircularProgressIndicator();
    // } else {
    //   return const Text('State');
    // }

    return loading ? const CircularProgressIndicator() : const Text('State');
  }
}
