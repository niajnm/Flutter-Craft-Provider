import 'package:flutter_craft/app/base_app/base_view_model.dart';
import 'package:provider/provider.dart';

class ProviderPath {
  static dynamic providersList = [
    // ChangeNotifierProvider(create: (_) => BaseController(), lazy: true),
    ChangeNotifierProvider(create: (_) => BaseViewModel(), lazy: true),
  ];
}
