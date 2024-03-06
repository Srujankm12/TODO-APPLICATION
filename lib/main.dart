import 'package:flutter/material.dart';
import 'package:hello/currency.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final documentPath = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(documentPath.path);
   runApp( const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Current(),
 theme: ThemeData(primarySwatch: Colors.yellow),


    );
  }
}
