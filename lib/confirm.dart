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
    return SizedBox(
      height: 300,
      child: Stepper(
        currentStep: currentStep,
        onStepContinue: () {
          if (currentStep < 1) {
            setState(() {
              currentStep++;
            });
          } else {
            Navigator.of(context).pop();
          }
        },
        steps: const [
          Step(
            title: Text('Step 1'),
            content: Text('Check and verify your information'),
          ),
          Step(
            title: Text('Step 2'),
            content: Text('Confirm your booking'),
          ),
        ],
      ),
    );
  }
}
