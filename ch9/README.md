# ch9 상태관리

### setState()
- State를 상속하는 모든 클래스는 setState() 함수를 사용할 수 있다.
- setState() 함수는 매개변수 하나를 입력으로 받음
=> 이 매개변수는 콜백 함수
=> 콜백 함수에 변경하고 싶은 속성들을 입력해주면 해당 코드가 반영된 뒤 build() 함수가 실행
=> ❗콜백 함수가 비동기로 작성되면 안된다는 점을 주의
  ```dart
  //number를 1씩 증가시키고 다시 build() 함수를 실행
  setState((){
    number ++;
  })
  ```

### showCupertinoDialog() 함수
![image](https://github.com/fable0831/flutterfactory/assets/93421415/745ea592-b96a-48b9-88db-1c8e76f796ac)
- 다이얼로그를 실행하는 함수
- ios 스타일로 다이얼로그가 실행되며 실행 시 모든 애미네이션과 작동이 ios 스타일로 적용
- Cupertino 위젯을 사용하려면 import 'package:flutter/cupertino.dart'; 필수
- 모든 showDialog() 형태의 함수들은 BuildContext를 반드시 입력해야 한다.
- 배리어: 다이얼로그 위젯 외에 흐림 처리가 된 부분
=> barrierDismissible: true는 배리얼를 눌렀을 때 다이얼로그가 닫힘
- builder() 함수에 다이얼로그로 띄우고 싶은 위젯을 반환

