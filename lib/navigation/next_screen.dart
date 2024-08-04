import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Next Screen'),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Next Screen',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'argument: ${Get.arguments}',
              style: const TextStyle(fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
              'parameter: ${Get.parameters["id"]}',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            ElevatedButton(
              onPressed: () {
                // to navigate to a new screen
                Get.back(
                  result: 'Success',
                  // if your set [closeOverlays] to true, Get.back()
                  // the currently open snackbars, dialogs, bottomsheets

                  closeOverlays: false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[500],
                foregroundColor: Colors.white,
              ),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
