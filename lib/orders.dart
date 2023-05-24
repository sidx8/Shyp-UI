import 'package:flutter/material.dart';
import 'package:shyp_ui/components/bottomnavbar.dart';
import 'package:shyp_ui/track.dart';
import 'package:shyp_ui/util/static_data.dart';

class OrdersScreen extends StatefulWidget {
  final bool fullfilled;

  const OrdersScreen({super.key, required this.fullfilled});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int _selectedIndex = 1;
  String filterStatus = 'All';

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> filteredOrders = orders.where((order) {
      if (filterStatus == 'All') {
        return order['status'] == 'inprogress' || order['status'] == 'pending';
      }
      if (filterStatus == 'Pending') {
        return order['status'] == 'pending';
      }
      if (filterStatus == 'In Progress') {
        return order['status'] == 'inprogress';
      } else {
        return order['status'].toString() == filterStatus;
      }
    }).toList();

    int allCount = orders
        .where((order) =>
            order['status'] == 'inprogress' || order['status'] == 'pending')
        .length;
    int pendingCount =
        orders.where((order) => order['status'] == 'pending').length;
    int inProgressCount =
        orders.where((order) => order['status'] == 'inprogress').length;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ChoiceChip(
                  label: Text('All (${allCount.toString()})',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  selected: filterStatus == 'All',
                  selectedColor: Colors.red[400],
                  backgroundColor: Colors.grey[800],
                  onSelected: (bool selected) {
                    setState(() {
                      filterStatus = 'All';
                    });
                  },
                ),
                const SizedBox(width: 5),
                ChoiceChip(
                  label: Text('Pending (${pendingCount.toString()})',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  selected: filterStatus == 'Pending',
                  selectedColor: Colors.red[400],
                  backgroundColor: Colors.grey[800],
                  onSelected: (bool selected) {
                    setState(() {
                      filterStatus = 'Pending';
                    });
                  },
                ),
                const SizedBox(width: 5),
                ChoiceChip(
                  label: Text('In Progress (${inProgressCount.toString()})',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  selected: filterStatus == 'In Progress',
                  selectedColor: Colors.red[400],
                  backgroundColor: Colors.grey[800],
                  onSelected: (bool selected) {
                    setState(() {
                      filterStatus = 'In Progress';
                    });
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredOrders.length,
                itemBuilder: (ctx, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) =>
                            TrackLoadScreen(filteredOrders[index]),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('price pending',
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600)),
                              Badge(
                                label: Text(
                                  filteredOrders[index]['status'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                largeSize: 25,
                                backgroundColor: Colors.blue[100],
                                textColor: Colors.grey[800],
                                padding: const EdgeInsets.all(5),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.teal,
                              ),
                              const SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    filteredOrders[index]['pickupLocation']
                                        .toString(),
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text('08-Mar-23',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Icons.flag,
                                color: Colors.blueGrey,
                              ),
                              const SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    filteredOrders[index]['dropLocation']
                                        .toString(),
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Text('To be decided',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${filteredOrders[index]['quantityOfLoad']} \u2022 TMT \u2022 Open full body Truck ',
                                style: const TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              IconButton(
                                icon: const Icon(Icons.arrow_forward),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (ctx) => TrackLoadScreen(
                                          filteredOrders[index]),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomnavbar(context, _selectedIndex, onItemTapped),
    );
  }
}
