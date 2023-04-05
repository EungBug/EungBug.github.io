---
published: true
title:   "TIL-10 : JavaScript 함수"
excerpt: "Today I Learned JavaScript 함수!"

categories:
    - Study
tags:
    - JS

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-04-06
last_modified_at: 2023-04-06
---
<br>

## 함수 (Function)

함수란 `특정 목적을 가지고 작성한 블록문`을 의미한다. 필요할 때마다 함수를 `호출`하여 반복 수행할 수 있다.


### 함수 선언문

`function` 키워드로 시작하고, 함수명이 있어야 한다.

```javascript
function printHello() {
  console.log('HELLO');
}

// 호출
printHello()
```

### 함수 표현식
변수의 이름을 지정하고, 할당 연산자를 통해 함수를 정의하는 것을 말한다.

```javascript
const printHello = function () {
  console.log('HELLO');
}

// 호출
printHello()
```

### 호이스팅

함수 선언문과 함수 표현식은 호이스팅에서 차이를 보인다.  
호이스팅이란 함수 선언부가 유효범위 최상단으로 끌어올려지는 현상을 말한다.

함수 선언문의 경우 호이스팅이 되기 때문에 함수를 선언하기 전 호출이 가능하다.

```javascript
printHello(); // HELLO

function printHello() {
  console.log('HELLO');
}
```

함수 표현식은 호이스팅 현상이 발생하지 않기 때문에 정의되지 않는 함수를 호출할 수 없다.(초기화 에러가 발생한다.)
```javascript

printHello(); // Error!

const printHello = function () {
  console.log('HELLO');
}
```

### 함수 반환

`return` 키워드를 사용하면 함수 호출에 대한 `결과를 반환`하고 함수를 `종료`할 수 있다.  
return 키워드를 사용하지 않는 경우 기본적으로 함수는 `undefined`를 반환한다.

```javascript
function getHello() {
  return 'Hello';
}

console.log(getHello()); // Hello
```

return 키워드 뒤에 아무 값도 반환하지 않는 경우 undefined를 반환한다.
```javascript
function getHello() {
  return
}

console.log(getHello()); // undefined
```

### 매개변수 Prameter
함수 외부에서 데이터를 받아 내부에서 사용할 수 있는 변수를 매개변수라고 한다.

```javascript
function sum(a, b) {
  return a + b;
}
```
위와 같은 함수가 정의되었을 때, a와 b는 sum함수의 매개변수라고 한다.

`sum(1, 2)` 호출할 때 괄호 안에 들어간 데이터 즉, 1과 2는 인수라고 한다.

매개변수에 할당 연산자를 통해 기본값을 지정할 수 있다.

```javascript
function sum(a, b = 3) {
  return a + b;
}

sum(1) // 4
```

### 객체 구조분해할당 

```javascript
const user = {
  name: 'EungBug',
  age: 12
}

// 매개변수에서 구조분해할당을 해서 바로 필요한 데이터를 반환할 수 있다.
function getName({ name }) {
  return name
}


console.log(getName(user)) // EungBug
```

### 배열 구조분해할당
```javascript
const numArr = [1, 2, 3, 4, 5, 6];

function getFirst([a]) {
  return a
}

console.log(getFirst(numArr)); // 1
```

### 화살표 함수 Arrow Function

화살표 함수는 function 키워드를 사용하지 않고 `=>` 를 통해 함수를 정의한다. 할당 연산자를 사용해 정의하기 때문에 화살표 함수는 함수 표현식이다.

```javascript
const sum = function (a, b) {
  return a + b
}
```
위와 같이 함수를 function 키워드를 사용해서 정의하는데 화살표 함수는 function 키워드를 생략하고 => 기호를 사용하여 간략하게 작성하는 방법이다.  

return 키워드가 함수 내부에서 바로 나오는 경우 `return `키워드와 `{}` 기호는 생략이 가능하다.

```javascript
const sum = (a, b) => {
  return a + b
}

// return 생략
const sum = (a, b) => a + b
```

화살표 함수는 여러가지 규칙이 있다.
```javascript
// 변수에 할당해야한다.
const a = () => { }
// 매개변수가 1개이면 () 생략 가능
const b = x => { }
// 매개변수가 2개이상이면 () 생략 불가능
const c = (x, y) => { }
// return키워드가 함수 제일 처음에 시작하면 {}와 함께 생략 가능
const d = x => x * x
// return 키워드 앞에 다른 로직이 있으면 생략 불가
const f = x => {
	console.log(x * x);
	return x * x
}
// 객체 반환은 return과 {} 생략 불가 
const g = () => { 
	return { a: 1 }
}
// 소괄호로 묶어서반환
const h = () => ({ a: 1})

// 배열은 생략해서 반환 가능 
const i = () => [1, 2, 3]
```

### 즉시실행함수 IIFE
즉시실행함수란 `정의되자마자 즉시 실행되는 함수`를 말한다.  
즉시실행함수는 `()`로 함수를 감싸서 작성한다.

보통은 함수를 정의하고 호출문을 통해 호출을 한다.
```javascript
const printHello = () => {
  console.log('Hello~');
}

// 호출
printHello()
```

위 함수를 즉시실행함수로 만들면 아래와 같고 선언과 동시에 실행되어 console에 'Hello~'가 찍히게 된다.

```javascript
;(() => {
  console.log('Hello~');
})() 

// 매개변수를 받는 경우 뒷쪽 소괄호에 인수를 작성한다.
;((a, b) => a + b)(1, 2) // 3
```

즉시실행함수로 선언하는 방법은 여러가지가 있다.

```javascript
;()() // (F)()
;(function () {})() // (F)()
;(function () {}()) // (F())
;!function () {}() // !F()
;+function () {}() // +F()
```


