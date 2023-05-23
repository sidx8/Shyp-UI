import 'package:flutter/material.dart';
import 'package:shyp_ui/main.dart';
import 'package:shyp_ui/orders.dart';

class ConsignorDialog extends StatefulWidget {
  const ConsignorDialog({super.key});

  @override
  ConsignorDialogState createState() => ConsignorDialogState();
}

class ConsignorDialogState extends State<ConsignorDialog> {
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
                  'Consignee Details (Ship to)',
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
                      'Krishna Pvt. Ltd.',
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
            'Pathsala, Assam',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 25),
          const Text(
            '+ Add New Consignee Contact',
            style: TextStyle(color: Colors.red),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color?>(
                        Colors.red,
                      ),
                    ),
                    child: const Text('Back'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color?>(
                        Colors.red,
                      ),
                    ),
                    child: const Text('Confirm'),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const MainApp(),
                      ));
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
