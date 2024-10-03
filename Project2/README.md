# 📱 Project2

Project1에서 반복되는 코드를 줄여 재사용성을 높였습니다.

## 📋 프로젝트 설명

- Project1과 동일.

## 🧐 학습 포인트

### `반복되는 코드 -> 구조체로 생성`

기존에 조건문을 통해 각 조건마다 이미지 뷰를 생성하는 방식 대신에,
kirbyImageView 구조체를 만들어 food의 값에따라 이미지 뷰를 생성하여 리턴하였습니다.

또한, stepper의 경우 UI 설정이 동일하여
CustomStepper 구조체를 생성하여 코드를 재사용하였습니다.

### `확장`

```swift
extension Color {
    static let backgroundColor = Color(red: 166 / 255, green: 218 / 255, blue: 244 / 255)
}
```

(확장을 사용하여 기본 배경색 지정. 재사용 용이)

### `@Binding`

SwiftUI에서 두 개의 뷰가 데이터를 공유할 수 있게 해준다.

일반적으로 부모 뷰와 자식 뷰가 상태(state)를 공유할 때 사용되며, 부모 뷰가 @State로 관리하는 값을 자식 뷰에서 수정할 수 있도록 해준다.

(즉, 데이터의 소유권은 부모 뷰에 있지만, 자식 뷰에서 그 값을 읽고 수정할 수 있게 만드는 방식.)

#### @State와 @Binding의 차이:

- @State: 뷰의 상태를 소유하고 관리하는 속성. 뷰 자체에서 데이터를 직접 관리.

- @Binding: 다른 뷰(@State로 상태를 소유한 뷰)에서 관리하는 데이터를 연결하여 공유하는 속성.

해당 프로젝트에서 부모 뷰(=ContentView), 자식 뷰(=CustomStepper)이며,
자식 뷰(=CustomStepper)는 부모로부터 value 값을 공유 받아 자식 뷰에서 value 값을 변경하면 부모 뷰에서 관리하는 food 값도 함께 변경됩니다.

-> 이로 인해 @State인 food값이 변경됨에 따라 부모 뷰의 UI가 자동으로 업데이트 된다.
