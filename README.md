# schedule-app
スケジュール自動生成アプリ

## 動作環境
- Flutter 2.2.0  
- Android Studio 4.2 
- Xcode 12.4  

## 環境構築
### 前提条件
- Dartがインストールされていること
- fvmがインストールされていること
- Xcodeがインストールされていること
- Xcodeで新規作成したネイティブiOSアプリがビルドできること
- Android Studioがインストールされていること
- Android Studioで新規作成したネイティブAndroidアプリがビルドできること
- Android StudioのPlugin2つ(Flutterとdart)がインストールされていること

### 手順
1. fvmを使用しFlutterSDKをインストール
```
$ fvm install 2.2.0
$ fvm use 2.2.0
```
2. Android Studio/Preference/Language & Frameworks/DartとFlutterのSDK Pathを設定する
3. Android Studioの端末(iOS/Android)と、環境(develop/production)が選択されてることを確認し、`control + D`もしくは`$ fvm flutter run --dart-define=FLAVOR=development`
