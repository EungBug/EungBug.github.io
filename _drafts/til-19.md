---
published: true
title:   "TIL-19 : Object Property Key"
excerpt: "Today I Learned Object Property Key!"

categories:
    - Study
tags:
    - JS

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-05-15
last_modified_at: 2023-05-15
---
<br>

## 객체의 프로퍼티 추가와 삭제

> 객체에 새로운 프로퍼티를 추가하고자 할 땐?


 `점 표기법`을 사용하여 프로퍼티에 값을 할당해야 한다.

```jsx
const user = {
  name: 'EunBi',
  age: 27,
  hobbies: ['coding', 'game']
};

// 프로퍼티 추가
user.phoneNum = '010-1234-5678';
console.log(user);

// ==== 결과 =====
{
  name: 'EunBi',
  age: 27,
  hobbies: [ 'coding', 'game' ],
  phoneNum: '010-1234-5678' 
}
```

객체에 정의되지 않은 프로퍼티를 액세스하는 경우 `undefined`를 반환한다.

```jsx
console.log(user.email); // undefined
```

그렇기 때문에 해당 프로퍼티에 값을 바로 할당할 수 있으며, 이미 있는 프로퍼티를 다시 할당하더라도 새로운 값으로 `덮어쓸 수 있다`.

> 특정 프로퍼티를 삭제하고자 할땐?
> 

`delete` 키워드(독립 실행형 키워드)를 사용해야 한다.

delete 키워드를 통해 프로퍼티를 삭제 한 뒤 해당 프로퍼티에 접근 하면 다시 `undefined`를 반환한다.

```jsx
// delete 키워드 뒤에 삭제하고자 하는 프로퍼티 키를 작성한다.
delete user.age;
console.log(user);

// ==== 결과 ====
{
  name: 'EunBi',
  hobbies: [ 'coding', 'game' ],
  phoneNum: '010-1234-5678'
}
```

그러면 그냥 해당 값에 undefined를 할당하면 되지 않나?

⇒ 가능하다. 깔끔한 방법은 아니지만 정상 동작하는 코드이다. 하지만 undefined는 개발작가 직접 할당해서는 안 되는 값이다. (하나의 규칙이라고 생각하면 된다.)

그러면 null로 넣어주면 될까?

⇒ 프로퍼티 값을 null로 `리셋`하는 것은 프로퍼티를 `삭제`하는 것과는 다른 개념이다.
프로퍼티 값에 null을 할당하는 것은 **객체에 해당 프로퍼티는 있지만 아무 값도 지정되지 않는 상태**라는 것을 의미한다. 반면, undefined로 설정되어 있는 경우는 **객체에 해당 프로퍼티가 없다는 의미**가 된다.

```jsx
user.age = null;
console.log(user);

// ==== 결과 ====
{
  name: 'EunBi',
  age: null,
  hobbies: [ 'coding', 'game' ],
  phoneNum: '010-1234-5678'
}
```

**따라서 delete 키워드를 사용하여 프로퍼티를 삭제하는 것은 프로퍼티 자체가 불필요하다는 의미가 되고, 프로젝트 내부에서 사용하지 않겠다는 의미가 된다.**

## 특수 키 이름과 대괄호 프로퍼티 액세스

---

객체에서 Key를 지정할 때, 변수의 이름을 지정할 때와 같은 방식으로 지정했다.

⇒ 즉, 변수에서 사용할 수 있는 이름은 Key에 사용할 수 있다. 

⇒ Key는 변수보다 더 `유연`하다.

≠ Key에서 쓸 수 있는 이름을 변수에서 쓸 수 있는 것은 아니다.

변수명에 `공백`을 넣는다거나 `-` 를 넣는 경우 오류가 발생한다. Javascript에서 허용하지 않는다.

```jsx
// 둘다 오류 발생
const first name = 'Lee'
const first-name = 'Lee'
```

변수의 이름엔 공백 없이 이루어져야 하며 - 기호를 사용하면 안된다.

해당 규칙은 객체 프로퍼티 Key에도 적용되는 규칙이긴 하다.

하지만 사용할 수 있는 방법이 있다.

⇒ JavaScript에게 해당 값은 `Key의 이름으로만 사용`할 것이며, 따로 연산이 필요하지 않다는 것을 `따옴표`(큰 따옴표, 작은 따옴표 상관 없음)로 감싸 알려줘야한다. “이 이름은 단순 Key 이름이고 `문자열`에 불과하다.” 라고.  

```jsx
const user = {
  'first name' : 'Lee',
  'k-age': 27,
  hobbies: ['coding', 'game']
};

console.log(user);

// ==== 결과 ====
{ 'first name': 'Lee', 'k-age': 27, hobbies: [ 'coding', 'game' ] }
```

위와 같은 특수 키 이름을 가진 프로퍼티를 액세스하고 싶은 경우 `대괄호 표기법`을 통해서만 액세스가 가능하다.

```jsx
console.log(user.first name); // 오류 발생
```

⇒ 표현식 그대로 사용할 경우 Javascript가 “first”가 키워드인지 아니면 연산자인지 알 수 없기 때문에 “first”에 대해서 어떻게 해석하고 작업을 수행해야 할지 알 수 없기 때문이다.