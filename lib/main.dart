import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/main_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.windows) {
    await windowManager.ensureInitialized();
    WindowOptions windowOptions = const WindowOptions(
      size: Size(440, 956),
      minimumSize: Size(440, 956),
      maximumSize: Size(440, 956),
      center: true,
      title: "Flutter Setup",
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }
  runApp(
    const ProviderScope(
      child: MainWidget(),
    ),
  );
}
