import 'package:finamp/screens/playback_history_screen.dart';
import 'package:finamp/screens/settings_screen.dart';
import 'package:finamp/services/finamp_user_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get_it/get_it.dart';

class FinampHomeScreenHeader extends ConsumerWidget
    implements PreferredSizeWidget {
  FinampHomeScreenHeader({super.key});

  final _finampUserHelper = GetIt.instance<FinampUserHelper>();

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight * 1.5); // Standard height

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SvgPicture.asset(
            'images/finamp_cropped.svg',
            height: 48,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Finamp',
                  style: TextStyle(fontSize: 20),
                ),
                Text.rich(
                  TextSpan(
                    text: 'Connected to ',
                    children: [
                      TextSpan(
                        text: '${_finampUserHelper.currentUser?.serverId}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(TablerIcons.clock),
                iconSize: 28,
                onPressed: () {
                  Navigator.pushNamed(context, PlaybackHistoryScreen.routeName);
                },
              ),
              IconButton(
                icon: Icon(TablerIcons.settings),
                iconSize: 28,
                onPressed: () {
                  Navigator.pushNamed(context, SettingsScreen.routeName);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
