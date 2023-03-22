---
published: true
title:   "TIL-04 : JavaScript 기초 문법"
excerpt: "Today I Learned JavaScript basic!"

categories:
    - Study
tags:
    - [JS]

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-03-22
last_modified_at: 2023-03-22
---
JavaScript의 기초 먼저 스터디하고 추후 자세한 내용 스터디 예정

# JavaScript 기초 

## 주석(comment)
---

한 줄 주석은 슬래시2개(//)를 사용하고, 여러 줄 주석은 /* 와 */ 사이에 내용을 작성한다.

```javascript
// 한 줄 주석

/*
  여러 줄 주석
  입니다.
*/
```

## 변수(variant)
---

변수란 변하는 수로 값이 변하는 데이터를 저장하고 참조하기 위한 공간을 의미한다.

~~var~~, `let`, `const` 키워드를 사용하여 선언할 수 있다.  
let 키워드로 변수 선언 시 `변수명은 중복이 불가능`하다.


```javascript
// 키워드 변수명 = 값(데이터);
let a = 1;
a = 10; // 값을 재할당

let b; // 변수를 선언한다
b = 2; // 값을 할당한다

let c = 3; // 변수를 초기화한다(선언 + 할당을 한번에)
```

## 상수(constant)
---

상수는 `변하지 않는 수`를 의미하며, `const`키워드를 통해 상수 변수를 선언한다. 
const 키워드로 선언된 변수는 값을 재할당할 수 없다.  
`재할당이 불가능`하기 때문에 선언을 먼저 하고 할당을 나중에 해도 오류가 발생한다.
```javascript
const a = 1;
a = 2;
// constant variable 오류 발생

const b;
b = 10;
// 오류 발생
```

## 자료형
---
자료형이란 데이터의 종류를 의미한다.

### String 문자열
`큰따옴표("")`나 `작은따옴표('')`로 둘러싸인 값의 형태를 의미한다.

```js
let name = "EungBug";
let message = 'Hello, World!';
```

#### 템플릿 문자열
`템플릿 문자열`이란 ``백틱(`)``기호로 문자열을 정의하는 방법을 말한다.  
`${} 문법(보간법)`을 이용해 문자열에 변수 또는 식을 넣을 수 있다.


### Number 숫자형
자바스크립트에서는 정수와 실수를 따로 구분하지 않고 하나의 숫자 자료형으로 본다.

```javascript
let age = 27;
let num = 0.1; 
```


### Boolean 논리형
논리 값인 참을 의미하는 `true`, 거짓을 의미하는 `false` 2가지 값만 가진다.

```javascript
let bool1 = true;
let bool2 = false;
```

### undefined
변수를 선언만하고 `값은 아직 할당하지 않은 상태`를 말하는데, 변수나 상수를 선언하면 데이터를 할당해야 하는데 할당하지 않을 경우 임시로 데이터를 할당한다. 이 임시 데이터 값이 undefined이다.

```javascript
let empty;
console.log(empty); // undefined
```

### null
변수나 상수를 선언하고 값을 의도적으로 비울 때 사용하는 자료형이다.

```javascript
let empty = null;
console.log(empty); // null
```

### Object 객체
객체는 여러 데이터를 `중괄호({})`안에 `key:value` 형태의 한쌍으로 정의한 자료형이다.  
객체의 값에 접근할 때는 주로 `마침표(.)`를 사용하고, `대괄호([])`를 통해서도 접근이 가능하다.

```javascript
let eungBug = {
  name: "Eunbi Lee",
  age: 27
};

console.log(eungBug.name); // 'Eunbi Lee'
console.log(eungBug['age']); // 27
```

### Array 배열
배열은 `여러 데이터를 순차적으로 저장`할 수 있는 자료형이다. 배열에는 자바스크립트의 모든 자료형을 정의할 수 있다.  
배열로 정의한 데이터들을 요소라고 하고, `대괄호([])` 안에 위치의 `인덱스` 값을 넣어 접근할 수 있다.

```javascript
let scoreArray = [100, 80, 55, 93];
console.log(scoreArray[0]); // 100
```

## 함수(function)
함수란 `특정 목적을 가지고 작성한 블록문`을 의미한다.  
`function` 키워드를 사용해서 함수를 선언할 수 있다. 이렇게 선언한 함수는 `호출`해서 사용할 수 있다.  
함수는 여러 곳에서 호출 할 수 있어 재사용기 좋다.

```javascript
// 함수 선언
function 함수명() {
  // 코드 블록
};

// 함수 호출
함수명();
```

위 처럼 함수명을 넣어 선언한 함수를 기명 함수라고 한다.

함수는 변수에도 할당할 수 있으며 함수명(식별자) 없이 정의할 경우 `익명 함수`라고 하고 이떄는 `함수 표현`이라고 한다.  


```javascript
// 기명 함수
// 함수 선언
const printLog = function printLogFunc() {
  console.log('로그 출력');
}
// 함수 호출 시 변수명으로
printLog(); // '로그 출력'

// 익명 함수
// 함수 표현
const printName = function () {
  console.log('이름!!!');
}

// 함수 호출
printName(); // '이름!!!'
```
#### 메소드(Method)
하나의 속성안에 함수를 할당한 경우는 `메소드`라고 부른다.

```javascript
const eungBug = {
  name: 'EunBi Lee',
  age: 27,
  // 메소드 <함수 표현>
  getName: function () {
    return this.name;
  }
};

console.log(eungBug.getName()); // 'Eunbi Lee'
```


#### 매개변수(Parameters)
매개변수는 함수를 선언할 때 `외부에서 전달받는 변수`를 말한다.
외부에서 받은 변수를 함수 내부에서 사용할 수 있다.  
매개변수는 여러 개를 받을 수 있고 `쉼표(,)`를 통해 구분하면 된다.

```javascript
// add 함수의 매개변수는 num1과 num2!
function add(num1, num2) {
  // 함수 내부에서 변수를 그대로 사용이 가능하다.
  console.log(num1 + num2);
}
```

#### 인수(Aargument)
인수는 정의한 함수를 호출할 때 전달할 데이터를 말한다.
함수를 호출할 때 전달한 인수는 매개변수에 자동으로 할당된다.

위에서 선언한 add 함수를 호출하려면 아래처럼 호출해야 한다.
```javascript
add(1, 2); // 1과 2가 인수
add(10, 100); // 10과 100이 인수

// 함수 재사용 가능
```

#### return문
return문은 함수 내부에서 함수 외부로 데이터를 반환할 때 사용한다.

```javascript
function sum(a, b) {
  return a + b; // 반환할 식이나 값을 입력
}

let result = sum(1, 2); 
console.log(result); // 3
```

## 조건문
조건문은 특정 조건(truty, falsy)에 따라 다르게 실행되는 구문을 의미한다.

### if문 else문
if문은 `if` 뒤에 소괄호(()) 안의 조건식의 결과를 확인하여 `true`이면 중괄호 안의 코드들을 실행하는 조건문이다.  

<br>

`else`문은 if 문의 조건식이 `false`일 경우 else 뒤 중괄호 안의 코드들을 실행하는 조건문이다.


```javascript
// if문
if (조건식) {
  // 조건식이 true일 경우 실행
}

// if else문 
if (조건식) {
  // 조건식이 true일 경우 실행 
} else {
  // 조건식이 false일 경우 실행
}
```
---
다른 조건문의 경우 추후 다룰 예정입니다.

## DOM API
DOM API는 Document Object Model, Application Programming Interface의 약어로 자바스크립트에서 HTML을 제어하기 위한 명령들을 의미한다.

```javascript
// HTML 요소 중 class명이 box 요소 중 첫번째로 찾은 요소를 boxEl에 반환한다.
let boxEl = document.querySelector('.box');

console.log(boxEl);

// HTML 요소에 적용 가능한 메소드(명령어)
// HTML 요소에 event를 등록
boxEl.addEventListener();

// addEventListener(이벤트, 이벤트가 발생할 때 실행할 함수 = 핸들러)
boxEl.addEventListener('click', function () {
  // boxEl이 클릭되면 실행할 코드 
});

// HTML 요소 모두 찾기
document.querySelectorAll(''); // 배열로 반환 

```

`classList` : 특정 요소의 클래스 속성을 확인할 수 있고 DOMTokenList를 반환하는데 배열 형태로 클래스 정보들이 들어있다.  
클래스 속성을 추가, 삭제, 변경 등이 가능해진다.

```javascript
boxEl.classList
```

HTML은 문서를 순서대로 읽다가 script 태그를 만나면 script를 먼저 실행하게 되면서 DOM 생성을 멈추게 된다. 그래서 script에서 DOM 요소에 접근할 수 없게 된다.

이를 해결하기 위해 `defer` 속성을 추가하면 스크립트를 백그라운드에서 다운로드하고 다운로드 중 HTML 문서를 파싱하는 것을 멈추지 않기 때문에 스크립트에서 DOM 요소에 접근할 수 있게 된다.

```html
<script defer src="./main.js"></script>
```


### 메소드 체이닝
객체가 여러 메소드를 편하게 사용하기 위한 패턴으로 체인처럼 여러 개의 메소드를 연결해서 연속적으로 호출하는 기법을 말한다.


<br>
<br>
<br>

---

> 패스트캠퍼스 부트캠프를 진행하면서 `박영웅 강사님`의 강의를 참고하여 공부하고 이해한 내용들을 작성한 포스트입니다.

혹시라도 포스트에 잘못된 내용이 있거나, 오타가 있다면 댓글로 알려주시면 감사하겠습니다🙇🏻‍♀️
