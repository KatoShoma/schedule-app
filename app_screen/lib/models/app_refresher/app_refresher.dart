import 'package:rxdart/rxdart.dart';

class AppRefresher {
  static final AppRefresher _refresher = AppRefresher._instantiate();
  factory AppRefresher() => _refresher;
  AppRefresher._instantiate();

  final onRefreshGenres = BehaviorSubject<void>.seeded({});
  final onRefreshOyakoBanner = BehaviorSubject<void>.seeded({});
  final onSaveOyakoSetting = BehaviorSubject<void>.seeded({});
  final onSaveFamily = BehaviorSubject<void>.seeded({});
  final onSavePrefecture = BehaviorSubject<void>.seeded({});
  final onSaveGenre = BehaviorSubject<void>.seeded({});
  final onRefreshPushNotification = BehaviorSubject<void>.seeded({});
  final onChangeOyakoRelationDate = BehaviorSubject<DateTime>.seeded(DateTime.now());

  void requestTimelineRefresh() {
    onRefreshGenres.sink.add({});
  }

  void requestOyakoBannerRefresh() {
    onRefreshOyakoBanner.sink.add({});
  }

  void requestRootTabUpdate() {
    onSaveOyakoSetting.sink.add({});
  }

  void requestFamilyUpdate() {
    onSaveFamily.sink.add({});
  }

  void requestPrefectureUpdate() {
    onSavePrefecture.sink.add({});
  }

  void requestGenreUpdate() {
    onSaveGenre.sink.add({});
  }

  void requestSettingPushToggleRefresh() {
    onRefreshPushNotification.sink.add({});
  }

  void requestOyakoRelationDateUpdate(DateTime date) {
    onChangeOyakoRelationDate.sink.add(date);
  }
}