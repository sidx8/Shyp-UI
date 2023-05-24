import 'package:flutter/material.dart';

import 'components/customsteper.dart';
import 'confirm.dart';

class TrackLoadScreen extends StatelessWidget {
  final Map<String, dynamic> order;

  const TrackLoadScreen(this.order, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[800], //change your color here
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey[800],
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        title: Text(
          'Order: #${order['id']}',
          style: TextStyle(color: Colors.grey[800]),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pickup Location',
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400)),
                            Text('${order['pickupLocation']}',
                                style: TextStyle(
                                    color: Colors.blueGrey[700],
                                    fontWeight: FontWeight.w400)),
                            const SizedBox(height: 20),
                            Text('Drop Location',
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400)),
                            Text('${order['dropLocation']}',
                                style: TextStyle(
                                    color: Colors.blueGrey[700],
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Icon(Icons.local_shipping_outlined,
                            color: Colors.grey[900], size: 100),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order ID',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w400)),
                        Text('${order['id']}',
                            style: TextStyle(
                                color: Colors.blueGrey[700],
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('PickUp Date',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w400)),
                        Text('02-feb-23',
                            style: TextStyle(
                                color: Colors.blueGrey[700],
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Preferd Vehicle',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w400)),
                        Text('Open Half Body truck',
                            style: TextStyle(
                                color: Colors.blueGrey[700],
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Quantity of Load',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w400)),
                        Text('25 Tons',
                            style: TextStyle(
                                color: Colors.blueGrey[700],
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Material Type',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w400)),
                        Text('TMT',
                            style: TextStyle(
                                color: Colors.blueGrey[700],
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Load Status',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 10),
                    const CustomStepper(
                      currentStep: 2,
                      activeColor: Colors.green,
                      inactiveColor: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Per Tonne Freight Price',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[800],
                            fontSize: 16),
                      ),
                      Text(
                        '₹ 3000',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[800],
                            fontSize: 20),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color?>(
                      Colors.green,
                    ),
                  ),
                  child: const Text('Confirm Booking'),
                  onPressed: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (ctx) => const ConfirmBookingDialog(),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.red, width: 2),
                  ),
                  child: const Text(
                    'Cancel ',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
