// Generated by Hive CE
// Do not modify
// Check in to version control

import 'package:hive_ce/hive.dart';
import 'package:finamp/models/finamp_models.dart';
import 'package:finamp/models/jellyfin_models.dart';

extension HiveRegistrar on HiveInterface {
  void registerAdapters() {
    registerAdapter(AccessScheduleAdapter());
    registerAdapter(AuthenticationResultAdapter());
    registerAdapter(BaseItemAdapter());
    registerAdapter(BaseItemDtoAdapter());
    registerAdapter(BaseItemPersonAdapter());
    registerAdapter(ClientCapabilitiesAdapter());
    registerAdapter(ClientDiscoveryResponseAdapter());
    registerAdapter(CodecProfileAdapter());
    registerAdapter(ContainerProfileAdapter());
    registerAdapter(ContentViewTypeAdapter());
    registerAdapter(DeviceIdentificationAdapter());
    registerAdapter(DeviceInfoAdapter());
    registerAdapter(DeviceProfileAdapter());
    registerAdapter(DirectPlayProfileAdapter());
    registerAdapter(DownloadLocationAdapter());
    registerAdapter(DownloadLocationTypeAdapter());
    registerAdapter(DownloadedImageAdapter());
    registerAdapter(DownloadedParentAdapter());
    registerAdapter(DownloadedTrackAdapter());
    registerAdapter(ExternalUrlAdapter());
    registerAdapter(FinampFeatureChipTypeAdapter());
    registerAdapter(FinampFeatureChipsConfigurationAdapter());
    registerAdapter(FinampHistoryItemAdapter());
    registerAdapter(FinampLoopModeAdapter());
    registerAdapter(FinampPlaybackOrderAdapter());
    registerAdapter(FinampQueueInfoAdapter());
    registerAdapter(FinampQueueItemAdapter());
    registerAdapter(FinampQueueOrderAdapter());
    registerAdapter(FinampSegmentContainerAdapter());
    registerAdapter(FinampSettingsAdapter());
    registerAdapter(FinampStorableQueueInfoAdapter());
    registerAdapter(FinampTranscodingCodecAdapter());
    registerAdapter(FinampUserAdapter());
    registerAdapter(HttpHeaderInfoAdapter());
    registerAdapter(ImageBlurHashesAdapter());
    registerAdapter(ItemSwipeActionsAdapter());
    registerAdapter(KeepScreenOnOptionAdapter());
    registerAdapter(LyricDtoAdapter());
    registerAdapter(LyricLineAdapter());
    registerAdapter(LyricMetadataAdapter());
    registerAdapter(LyricsAlignmentAdapter());
    registerAdapter(LyricsFontSizeAdapter());
    registerAdapter(MediaAttachmentAdapter());
    registerAdapter(MediaItemIdAdapter());
    registerAdapter(MediaItemParentTypeAdapter());
    registerAdapter(MediaSourceInfoAdapter());
    registerAdapter(MediaStreamAdapter());
    registerAdapter(MediaUrlAdapter());
    registerAdapter(NameIdPairAdapter());
    registerAdapter(NameLongIdPairAdapter());
    registerAdapter(OfflineListenAdapter());
    registerAdapter(PlaybackSpeedVisibilityAdapter());
    registerAdapter(PlayerStateInfoAdapter());
    registerAdapter(ProfileConditionAdapter());
    registerAdapter(PublicSystemInfoResultAdapter());
    registerAdapter(PublicUsersResponseAdapter());
    registerAdapter(QueueItemAdapter());
    registerAdapter(QueueItemQueueTypeAdapter());
    registerAdapter(QueueItemSourceAdapter());
    registerAdapter(QueueItemSourceNameAdapter());
    registerAdapter(QueueItemSourceNameTypeAdapter());
    registerAdapter(QueueItemSourceTypeAdapter());
    registerAdapter(QuickConnectStateAdapter());
    registerAdapter(ReleaseDateFormatAdapter());
    registerAdapter(ResponseProfileAdapter());
    registerAdapter(SavedQueueStateAdapter());
    registerAdapter(SessionInfoAdapter());
    registerAdapter(SessionUserInfoAdapter());
    registerAdapter(SortByAdapter());
    registerAdapter(SortOrderAdapter());
    registerAdapter(SubtitleProfileAdapter());
    registerAdapter(TabContentTypeAdapter());
    registerAdapter(TranscodeDownloadsSettingAdapter());
    registerAdapter(TranscodingProfileAdapter());
    registerAdapter(UserConfigurationAdapter());
    registerAdapter(UserDtoAdapter());
    registerAdapter(UserItemDataDtoAdapter());
    registerAdapter(UserPolicyAdapter());
    registerAdapter(VolumeNormalizationModeAdapter());
    registerAdapter(XmlAttributeAdapter());
  }
}
