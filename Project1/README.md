# 📱 Project1

SwiftUI의 기본 구성 요소와 기능을 활용하여 간단한 앱을 만들었습니다.

## 📋 프로젝트 설명

- 이 프로젝트의 주제는 **커비 키우기** 입니다.
- 사용자가 주먹밥과 물을 커비에게 제공하여, 커비의 모습이 달라지는 간단한 상태 변화 기능을 포함하고 있습니다.
- SwiftUI의 `@State` 및 `View` 구조를 연습하며 앱 UI를 구성하였습니다.

## 🛠 주요 기능

- **주먹밥 주기**: Stepper를 통해 커비에게 주먹밥을 주면, 커비의 상태가 변화합니다.
- **물 주기**: Stepper를 통해 커비에게 물을 줄 수 있습니다.
- **이미지 변화**: `food`의 변수 값에 따라 커비의 이미지가 동적으로 변화합니다.

## 👀 결과
<img width="624" alt="스크린샷 2024-09-28 오후 11 52 00" src="https://github.com/user-attachments/assets/d76ea4d6-67c0-4a53-96de-d270456c7621">

https://github.com/user-attachments/assets/d1f01180-8463-438e-9315-ca1283de1fe3

## 🧐 학습 포인트

### `@State`

- `@State`는 SwiftUI에서 뷰의 상태를 관리하는 데 사용됩니다. `@State`로 선언된 변수는 SwiftUI 뷰에서 데이터가 변경될 때 뷰를 자동으로 다시 그리게 만듭니다.
- 즉, 사용자가 인터페이스와 상호작용하면서 값이 변하면, `@State`로 관리되는 값이 변동되고 그에 따라 화면이 다시 그려지게 됩니다.

해당 프로젝트에서는 커비가 주먹밥을 먹은 개수인 'food'변수를 @State로 선언하여, food 변수의 값에 따라 커비의 이미지를 바꿔 화면을 다시 그릴 수 있도록 하였습니다.

### `ZStack`, `VStack`, `HStack`

SwiftUI에서 레이아웃을 구성하기 위해 사용하는 세 가지 주요 스택입니다.

- **`ZStack`**: 뷰를 겹쳐 쌓을 때 사용합니다. 예를 들어, 배경 위에 텍스트를 겹쳐 배치하는 경우 유용합니다.
  
  ```swift
  ZStack {
      Color.blue
      Text("Hello, SwiftUI!")
  }

- **`VStack`**: 뷰를 수직으로 정렬할 때 사용합니다. 여러 뷰를 위에서 아래로 배치합니다.
  ```swift
  VStack {
    Text("첫 번째 텍스트")
    Text("두 번째 텍스트")
  }

- **`HStack`**: 뷰를 수평으로 정렬할 때 사용합니다. 여러 뷰를 가로로 배치하여 나란히 놓습니다.
  ```swift
  HStack {
    Text("왼쪽 텍스트")
    Text("오른쪽 텍스트")
  }

### `Stepper`
- Stepper는 사용자가 값의 증가 또는 감소를 쉽게 조정할 수 있는 UI 컴포넌트.
- Stepper는 주로 숫자 값을 조절하는데 사용되며, 값을 변경할 때마다 화면이 자동으로 업데이트됩니다.
  ```swift
  @State private var food: Int = 0
  Stepper("🍙 주먹밥 주기", value: $food, in: 0...10)

### `Spacer`
- Spacer는 뷰 사이에 빈 공간을 만들어 줍니다.
  ```swift
  Spacer()
  .frame(height: 20)
