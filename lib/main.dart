import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter'), centerTitle: true),

      //todays topic is about Flexible widget
      //about Expanded widget
      //about FlexFit.tight and FlexFit.loose
      //about how to use Flexible widget
      //about how to use Expanded widget
      body: Row(
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.red,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),

              child: const Text(
                'tight',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),

          const SizedBox(width: 20),

          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: const Text(
                'loose',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),

      // learning about Expanded widget
      // body: Column(
      //   children: [
      //     Expanded(flex: 2, child: Container(color: Colors.red)),
      //     Expanded(flex: 2, child: Container(color: Colors.green)),
      //     Expanded(child: Container(color: Colors.blue)),
      //   ],
      // ),

      // learning about Expanded widget end

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment:
      //         MainAxisAlignment.center, //Y axis alignment because of its Column
      //     children: [
      //       Row(
      //         mainAxisAlignment:
      //             MainAxisAlignment
      //                 .spaceEvenly, //X axis alignment because of its Row
      //         children: [
      //           Container(
      //             padding: const EdgeInsets.all(20),
      //             margin: const EdgeInsets.all(10),
      //             width: 50,
      //             height: 50,
      //             color: Colors.red,
      //           ),
      //           Container(
      //             padding: const EdgeInsets.all(20),
      //             margin: const EdgeInsets.all(10),
      //             width: 50,
      //             height: 50,
      //             color: Colors.blue,
      //           ),
      //           Container(
      //             padding: const EdgeInsets.all(20),
      //             margin: const EdgeInsets.all(10),
      //             width: 50,
      //             height: 50,
      //             color: Colors.green,
      //           ),
      //           Container(
      //             padding: const EdgeInsets.all(20),
      //             margin: const EdgeInsets.all(10),
      //             width: 50,
      //             height: 50,
      //             color: Colors.yellow,
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
