import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../../assets/images/qr_code.png', //! PLACEHOLDER
              width: 200.0,
              height: 200.0,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Scan QR Code',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Align the QR code within the frame to scan it',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.grey[200],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter QR code manually',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.qr_code),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Start Scan'),
            ),
          ],
        ),
      ),
    );
  }
}
