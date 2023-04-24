import 'package:flutter/material.dart';
import 'package:message_app/Presentation/providers/chat_provider.dart';
import 'package:message_app/Presentation/screens/chat/chat_sceen.dart';
import 'package:message_app/config/theme/app_theme.dart';

import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Message App',
          theme: AppTheme().theme(),
          home: const ChatScreen()),
    );
  }
}
