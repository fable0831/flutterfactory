# ch7 webwiew

### Webview widget
- 

### 환경 설정
- pubspec.yaml : flutter 설정
- android/app/src/main/AndroidManifest.xml : 앱 권한 등 android native 설정 가능
- android/build.gradle: 프로젝트 파일. 주로 클래스패스나 레포지토리 정보
- android/app/build.gradle: 모듈 파일. 의존성이나 버전 정보를 관리
- ios/Runner/Info.plist : ios 앱 실행 패키지에 관한 필수 정보. 앱에서 사용할 권한을 추가할 때 사용.

### 컨트롤러
- 프로그램적으로 위젯을 제어하는 기능을 제공
- 아이콘 버튼을 이용해 유저의 클릭 입력을 받고 원하는 콜백 함수를 실행할 수 있음.
