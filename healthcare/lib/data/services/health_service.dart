// lib/data/services/health_service.dart
import 'package:healthcare/data/models/health_model.dart';

class HealthService {
  List<HealthModel> getHealthData() {
    return [
      HealthModel(condition: 'Heart Rate', value: '120 bpm'),
      HealthModel(condition: 'Blood Status', value: '116/70'),
      HealthModel(condition: 'Blood Count', value: '80-90'),
      HealthModel(condition: 'Glucose Level', value: '9.000 mg/dL'),
    ];
  }
}
