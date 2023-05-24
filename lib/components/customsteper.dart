import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  final int currentStep;
  final Color activeColor;
  final Color inactiveColor;

  const CustomStepper({
    super.key,
    required this.currentStep,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _buildStep(1),
        _buildStep(2),
        _buildStep(3),
        _buildStep(4),
        _buildStep(5),
      ],
    );
  }

  Widget _buildStep(int step) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: step <= currentStep ? activeColor : inactiveColor,
                shape: BoxShape.circle,
              ),
              width: 12.0,
              height: 12.0,
            ),
            if (step < 5)
              Container(
                height: 2.0,
                width: 50,
                color: step < currentStep ? activeColor : inactiveColor,
              ),
            if (step == 5)
              Container(
                height: 2.0,
                width: 30,
                color: Colors.transparent,
              ),
          ],
        ),
        const SizedBox(height: 4.0),
        Text('Step $step'),
      ],
    );
  }
}
