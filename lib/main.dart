// main.dart
import 'models/user.dart';
import 'models/shipment.dart';

void main() {
  final handler = User(
    id: 'u001',
    name: 'أحمد محمد',
    email: 'ahmed@example.com',
  );

  final shipment1 = Shipment(
    id: 'SH-1001',
    status: ShipmentStatus.processing,
    handler: handler,
    note: 'يرجى الاتصال بالعميل قبل التسليم',
  );

  // إنشاء شحنة بدون ملاحظة
  final shipment2 = Shipment(
    id: 'SH-1002',
    status: ShipmentStatus.shipped,
    handler: handler,
  );

  print(shipment1);
  print(shipment2);

  print('shipment1 note: ${shipment1.note ?? "لا توجد ملاحظات"}');
  print('shipment2 note: ${shipment2.note ?? "لا توجد ملاحظات"}');
}
