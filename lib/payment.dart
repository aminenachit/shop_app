import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PayPalPaymentScreen extends StatelessWidget {
  final String paypalLogoUrl =
      'https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-200px.png';
  final Uri _url = Uri.parse('https://www.paypal.com');

  Future<void> _launchPayPalWebsite() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay with PayPal'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /*Text(
              'Payment Amount: \$100.00',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),*/
            const SizedBox(height: 16.0),
            Image.network(
              paypalLogoUrl,
              height: 100.0,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email or mobile number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Perform PayPal payment logic here
                // Add your payment integration code

                // Launch PayPal website
                _launchPayPalWebsite();
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.payment),
                  SizedBox(width: 8.0),
                  Text('Next'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
