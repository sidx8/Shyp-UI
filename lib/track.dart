import 'package:flutter/material.dart';

import 'confirm.dart';

class TrackLoadScreen extends StatelessWidget {
  final Map<String, dynamic> order;

  const TrackLoadScreen(this.order, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Load'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Load ID: ${order['id']}'),
            subtitle: Text('Status: ${order['status']}'),
          ),
          ListTile(
            title: Text(
                'From ${order['pickupLocation']} to ${order['dropLocation']}'),
            subtitle: Text('Load: ${order['quantityOfLoad']}'),
          ),
          ListTile(
            title: const Text('Pickup Date'),
            subtitle: Text('${order['pickupDate']}'),
          ),
          ...order['trucks']
              .map(
                (truck) => ListTile(
                  title: Text('Truck ID: ${truck['id']}'),
                  subtitle: Text('License: ${truck['license']}'),
                ),
              )
              .toList(),
          ElevatedButton(
            child: const Text('Confirm Booking'),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (ctx) => ConfirmBookingDialog(),
              );
            },
          ),
        ],
      ),
    );
  }
}
