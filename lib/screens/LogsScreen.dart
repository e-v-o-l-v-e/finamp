import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../components/LogsScreen/LogsView.dart';
import '../services/FinampLogsHelper.dart';

class LogsScreen extends StatefulWidget {
  const LogsScreen({Key key}) : super(key: key);

  static const List<Tab> tabs = [
    Tab(text: "Main Thread"),
    Tab(text: "Audio Service"),
  ];

  @override
  _LogsScreenState createState() => _LogsScreenState();
}

class _LogsScreenState extends State<LogsScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(vsync: this, length: LogsScreen.tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FinampLogsHelper finampLogsHelper = GetIt.instance<FinampLogsHelper>();

    return DefaultTabController(
      length: LogsScreen.tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Logs"),
          bottom: TabBar(tabs: LogsScreen.tabs),
          actions: [
            IconButton(
              icon: Icon(Icons.copy),
              onPressed: () async {
                if (_tabController.index == 1) {
                  await finampLogsHelper.copyLogs();
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Main thread logs copied")));
                } else {
                  if (!AudioService.running) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Audio service is not running")));
                  } else {
                    await AudioService.customAction("copyLogs");
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Audio service logs copied")));
                  }
                }
              },
            )
          ],
        ),
        body: TabBarView(
          children: [
            LogsView(isMusicPlayerBackgroundTask: false),
            LogsView(isMusicPlayerBackgroundTask: true),
          ],
        ),
      ),
    );
  }
}
