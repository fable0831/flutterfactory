# ch8 Widget LifeCycle

- flutter에서 모든 위젯은 Widget 클래스를 상속하고, Widget 클래스는 불변 특성을 가짐
=> 클래스를 한 번 생성하고 나면 속성을 변경할 수 없다는 뜻
- 생성자의 새로운 매개변수가 입력되는 경우 처럼 위젯의 속성을 변경해야 할 때가 있음
=> build() 함수에서 변경된 매개변수를 기반으로 build() 함수를 재실행 시켜주어야 함
- stateless widget은 불변이기 때문에 build() 함수가 재실행되지 않음
=> 인스턴스를 아예 새로 생성한 후 기존 인스턴스를 대체해서 변경 사항을 화면에 반영

## StatelessWidget
1. StatelessWidget이 빌드되면 생성자가 실행
2. 필수로 override해야 하는 build() 함수가 실행
3. build() 함수에 반환한 위젯이 화면에 렌더링

## StatefulWidget
![statefulwidget](https://github.com/fable0831/flutterfactory/assets/93421415/5c69b896-bae2-4fda-98a5-3d4af2dd68d6)
- Widget class와 State class 2개로 구성

### 상태 변경이 없는 생명주기 (중간에 위젯의 상태가 변경되지 않을 때)
1. StatefulWidget 생성자가 실행
2. createState() 함수가 실행. StatefulWidget과 연동되는 State를 생성
3. State가 생성되면 initState()가 실행. => State가 생성되는 순간에만 실행되고, 다시 실행되지 않음.
4. didChageDependencies()가 실행. BuildContext가 제공되고 State가 의존하는 값이 변경되면 재실행
5. State의 상태가 dirty로 설정 => dirty는 build()가 재실행되어야 하는 상태 
6. build() 함수가 실행되고 UI가 반영됨
7. build() 실행이 완료되고 clean 상태로 변경
8. deactivate() 실행 => 위젯이 위젯트리에서 사라지면 실행. State가 일시적 혹은 영구적으로 삭제될 때 실행
9. dispose()가 실행 => 위젯이 영구적으로 삭제될 때 실행

### StatefulWidget 생성자의 매개변수가 변경됬을 때 생명주기
1. StatefulWidget 생성자가 실행
2. State의 didUpdateWidget() 함수가 실행
3. State의 상태가 dirty로 변경
4. build()가 실행
5. clean으로 변경

### State 자체적으로 build()를 재실행할 때 생명주기
- StatefulWidget를 구성하는 State class는 setState() 함수를 실행해 build() 함수를 자체적으로 재실행 할 수 있다.
1. setState()를 실행
2. State의 상태가 dirty로 변경
3. build()가 실행
4. clean으로 변경

## Timer
- 특정 시간이 지난 후에 일회성 또는 지속적으로 함수를 실행
- Timer의 생성자는 Timer(), Timer.periodic() 2개
  - Timer: 기본 생성자. 첫 번째 매개변수에 대기 기간, 두 번째 매개변수에 콜백 함수
  ```dart
  //3초 후에 hello라는 문자열 출력
  Timer(Duration(seconds: 3), (Timer timer){print('hello')})
  ```
  - Timer.periodic: 주기적으로 콜백 함수 실행. 첫 번째 매개변수에 대기 기간, 두 번째 매개변수에 콜백 함수
  ```dart
  //3초 마다 hello라는 문자열 출력
  Timer.periodic(Duration(seconds: 3), (Timer timer){print('hello')})
  ```