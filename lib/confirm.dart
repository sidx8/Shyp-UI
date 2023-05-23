import 'package:flutter/material.dart';

class ConfirmBookingDialog extends StatefulWidget {
  const ConfirmBookingDialog({super.key});

  @override
  ConfirmBookingDialogState createState() => ConfirmBookingDialogState();
}

class ConfirmBookingDialogState extends State<ConfirmBookingDialog> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: 300,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Confirm Booking',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ),
          // Stepper(
          //   currentStep: currentStep,
          //   onStepContinue: () {
          //     if (currentStep < 1) {
          //       setState(() {
          //         currentStep++;
          //       });
          //     } else {
          //       Navigator.of(context).pop();
          //     }
          //   },
          //   steps: const [
          //     Step(
          //       title: Text('Step 1'),
          //       content: Text('Check and verify your information'),
          //     ),
          //     Step(
          //       title: Text('Step 2'),
          //       content: Text('Confirm your booking'),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
