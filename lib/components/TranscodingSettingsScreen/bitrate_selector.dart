import 'package:flutter/material.dart';
import 'package:finamp/l10n/app_localizations.dart';
import 'package:hive_ce/hive.dart';

import '../../models/finamp_models.dart';
import '../../services/finamp_settings_helper.dart';

class BitrateSelector extends StatelessWidget {
  const BitrateSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(AppLocalizations.of(context)!.bitrate),
          subtitle: Text(AppLocalizations.of(context)!.bitrateSubtitle),
        ),
        ValueListenableBuilder<Box<FinampSettings>>(
          valueListenable: FinampSettingsHelper.finampSettingsListener,
          builder: (context, box, child) {
            final finampSettings = box.get("FinampSettings")!;

            // We do all of this division/multiplication because Jellyfin wants us to specify bitrates in bits, not kilobits.
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  min: 64,
                  max: 320,
                  value:
                      (finampSettings.transcodeBitrate / 1000).clamp(64, 320),
                  divisions: 8,
                  label: AppLocalizations.of(context)!.kiloBitsPerSecondLabel(
                      finampSettings.transcodeBitrate ~/ 1000),
                  onChanged: (value) {
                    FinampSetters.setTranscodeBitrate((value * 1000).toInt());
                  },
                ),
                Text(
                  AppLocalizations.of(context)!.kiloBitsPerSecondLabel(
                      finampSettings.transcodeBitrate ~/ 1000),
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
