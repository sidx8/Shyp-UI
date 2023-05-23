import 'package:flutter/material.dart';
import 'package:shyp_ui/track.dart';
import 'package:shyp_ui/util/static_data.dart';

class OrdersScreen extends StatelessWidget {
  final bool ongoing;

  const OrdersScreen({super.key, required this.ongoing});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> filteredOrders = orders.where((order) {
      if (ongoing) {
        return order['status'] == OrderStatus.inprogress ||
            order['status'] == OrderStatus.pending;
      } else {
        return order['status'] == OrderStatus.fulfilled;
      }
    }).toList();

    return Scaffold(
      body: ListView.builder(
        itemCount: filteredOrders.length,
        itemBuilder: (ctx, index) => Card(
          child: ListTile(
            title: Text(
                '${filteredOrders[index]['title']} - ${filteredOrders[index]['status']}'),
            subtitle: Text(
                'From ${filteredOrders[index]['pickupLocation']} to ${filteredOrders[index]['dropLocation']}\n'
                'Load: ${filteredOrders[index]['quantityOfLoad']}\n'
                'Pickup Date: ${filteredOrders[index]['pickupDate']}'),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => TrackLoadScreen(filteredOrders[index]),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
