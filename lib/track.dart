import 'package:flutter/material.dart';

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
      body: Column(
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
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color?>(
                    Colors.blueGrey[700],
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
          ElevatedButton(
            child: const Text('Cancel Booking'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
