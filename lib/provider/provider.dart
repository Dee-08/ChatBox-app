import 'package:provider/single_child_widget.dart' show SingleChildWidget;
import 'package:provider/provider.dart';
import 'package:chatbox_app/provider/theme_provider.dart';

class AppProvider {
  List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
  ];
}
