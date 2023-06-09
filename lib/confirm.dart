import 'package:flutter/material.dart';
import 'package:shyp_ui/consignor.dart';

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
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.only(
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
                  'Consignor  Details (Dispatch from)',
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Balaji Cement',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.close, color: Colors.grey),
                        Icon(Icons.keyboard_arrow_down_outlined,
                            color: Colors.grey),
                      ],
                    )
                  ]),
            ),
          ),
          const Text(
            'Durgapur, West Bengal',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 25),
          const Text(
            '+ Add New Consignor Contact',
            style: TextStyle(color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color?>(
                    Colors.red,
                  ),
                ),
                child: const Text('Next'),
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    context: context,
                    builder: (ctx) => const ConsignorDialog(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
