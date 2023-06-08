enum OrderStatus {
  inprogress,
  fulfilled,
  pending,
}

final List<Map<String, dynamic>> orders = [
  {
    'id': '1',
    'title': 'Order 1',
    'status': 'inprogress',
    'pickupLocation': 'Durgapur, West Bengal',
    'dropLocation': 'Barpeta, Assam',
    'quantityOfLoad': '10 Tonne',
    'pickupDate': DateTime(2023, 6, 1).toIso8601String(),
    'trucks': [
      {'id': 'truck1', 'license': 'ABC-123'},
    ],
  },
  {
    'id': '2',
    'title': 'Order 2',
    'status': 'fulfilled',
    'pickupLocation': 'Denver',
    'dropLocation': 'Phoenix',
    'quantityOfLoad': '12 Tonne',
    'pickupDate': DateTime(2023, 6, 15).toIso8601String(),
    'trucks': [
      {'id': 'truck2', 'license': 'DEF-456'},
    ],
  },
  {
    'id': '4',
    'title': 'Order 4',
    'status': 'inprogress',
    'pickupLocation': 'Denver',
    'dropLocation': 'Phoenix',
    'quantityOfLoad': '12 Tonne',
    'pickupDate': DateTime(2023, 6, 15).toIso8601String(),
    'trucks': [
      {'id': 'truck2', 'license': 'DEF-456'},
    ],
  },
  {
    'id': '5',
    'title': 'Order 5',
    'status': 'pending',
    'pickupLocation': 'Chicago',
    'dropLocation': 'Houston',
    'quantityOfLoad': '15 Tonne',
    'pickupDate': DateTime(2023, 6, 5).toIso8601String(),
    'trucks': [
      {'id': 'truck3', 'license': 'GHI-789'},
    ],
  },
  {
    'id': '6',
    'title': 'Order 6',
    'status': 'pending',
    'pickupLocation': 'Chicago',
    'dropLocation': 'Houston',
    'quantityOfLoad': '15 Tonne',
    'pickupDate': DateTime(2023, 6, 5).toIso8601String(),
    'trucks': [
      {'id': 'truck3', 'license': 'GHI-789'},
    ],
  },
  {
    'id': '7',
    'title': 'Order 7',
    'status': 'pending',
    'pickupLocation': 'Chicago',
    'dropLocation': 'Houston',
    'quantityOfLoad': '15 Tonne',
    'pickupDate': DateTime(2023, 6, 5).toIso8601String(),
    'trucks': [
      {'id': 'truck3', 'license': 'GHI-789'},
    ],
  },
  {
    'id': '8',
    'title': 'Order 8',
    'status': 'pending',
    'pickupLocation': 'Chicago',
    'dropLocation': 'Houston',
    'quantityOfLoad': '15 Tonne',
    'pickupDate': DateTime(2023, 6, 5).toIso8601String(),
    'trucks': [
      {'id': 'truck3', 'license': 'GHI-789'},
    ],
  },
  {
    'id': '9',
    'title': 'Order 9',
    'status': 'pending',
    'pickupLocation': 'Chicago',
    'dropLocation': 'Houston',
    'quantityOfLoad': '15 Tonne',
    'pickupDate': DateTime(2023, 6, 5).toIso8601String(),
    'trucks': [
      {'id': 'truck3', 'license': 'GHI-789'},
    ],
  },
  {
    'id': '10',
    'title': 'Order 10',
    'status': 'inprogress',
    'pickupLocation': 'Chicago',
    'dropLocation': 'Houston',
    'quantityOfLoad': '15 Tonne',
    'pickupDate': DateTime(2023, 6, 5).toIso8601String(),
    'trucks': [
      {'id': 'truck3', 'license': 'GHI-789'},
    ],
  },
  {
    'id': '11',
    'title': 'Order 11',
    'status': 'inprogress',
    'pickupLocation': 'Chicago',
    'dropLocation': 'Houston',
    'quantityOfLoad': '15 Tonne',
    'pickupDate': DateTime(2023, 6, 6).toIso8601String(),
    'trucks': [
      {'id': 'truck3', 'license': 'GHI-789'},
    ],
  },
];
