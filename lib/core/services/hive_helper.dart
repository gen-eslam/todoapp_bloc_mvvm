import 'package:hive_flutter/adapters.dart';
import 'package:task_manager/models/task_model.dart';

class HiveHelper {
  //create a singleton pattern
  HiveHelper._instance() {
    _initHive();
  }
  static final HiveHelper _init = HiveHelper._instance();
  factory HiveHelper() {
    return _init;
  }

  Future<void> _initHive() async {
    Hive.registerAdapter(TaskModelAdapter());
    await Hive.initFlutter();
  }
  
}
