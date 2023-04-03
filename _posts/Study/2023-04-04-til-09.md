---
published: true
title:   "TIL-09 : JavaScript"
excerpt: "Today I Learned JavaScript!"

categories:
    - Study
tags:
    - JS

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-04-04
last_modified_at: 2023-04-04
---
<br>

## 전개 연산자
`전개 연산자`란 배열 또는 객체 앞에 `...`을 붙일 경우 객체나 배열의 요소를 펼쳐 나열해주는 연산자이다.

```javascript
const a = [1, 2, 3];

console.log(a); // [1, 2, 3]
// 전개 연산자를 붙이면 배열 안에 있는 요소를 다 꺼내서 나열한다.
console.log(...a); // 1, 2, 3

const b = [4, 5, 6];

// 배열 병합 concat 메서드를 통해 만드는 경우 
console.log(a.concat(b)); // [1, 2, 3, 4, 5, 6]

// 전개 연산자 사용 x
console.log([a, b]); // [[1, 2, 3], [4, 5, 6]]
// 전개 연산자 사용 o
console.log([...a, ...b]); // [1, 2, 3, 4, 5, 6]
```

## 구조 분해 할당
`구조 분해 할당` 구문은 배열이나 객체의 속성을 분해해서 값을 각각 할당할 수 있게 한다.

### 배열 구조 분해 할당

배열 각각의 아이템을 다른 변수에 할당하려면 `인덱싱`을 통해 할당한다.
```javascript
const arr = [1, 2, 3];

const a = arr[0]; // 1
const b = arr[1]; // 2
const c = arr[2]; // 3
```

구조 분해 할당 문법을 사용한 경우 배열의 구조에 맞게 각각의 변수를 만들어 할당한다.

```javascript 
const arr = [1, 2, 3];

const [a, b, c] = arr;

console.log(a, b, c); // 1 2 3
```

```javascript
// 이미 변수를 할당한 경우 const를 제거 
let a;
let b;
let c;

[a, b, c] = arr;

// 특정 아이템만 필요한 경우
// 순서대로 들어갈 수 있도록 필요 없는 자리는 쉼표로 구분한다.
[, b, c] = arr;
```

```javascript
const arr = [1, 2, 3];

// 전개연산자와 rest를 통해 나머지 아이템을 배열로 받는다 
const [a, ...rest] = arr;

console.log(a, rest); // 1 [2, 3]
```

### 객체 데이터 구조분해

아래는 객체를 점표기법을 통해 각각의 데이터를 변수에 할당하는 경우이다.
```javascript
const obj = {
  a: 1,
  b: 2,
  c: 3,
};

const a = obj.a;
const b = obj.b;
const c = obj.c;
console.log(a, b, c); // 1 2 3
```

객체 구조 분해를 통해 할당하는 경우는 아래와 같다.

```javascript 
// 객체 구조 분해
const { a, b, c } = obj;
console.log(a, b, c); // 1 2 3

// 객체에서 특정 속성의 값만 빼서 할당하고 싶을 때
const obj = {
  a: 1,
  b: 2,
  c: 3,
  key: 4,
};
const { key } = obj;
console.log(key); // 4

// 속성이 존재하지 않는 경우 기본값을 지정할 수 있다.
const { x = 4 } = obj;
console.log(x); // 4

// 특정 속성을 다른 이름의 변수로 지정하는 방법
const { x = 4, a: eunbi} = obj;
console.log(eunbi); // 1

const obj = {
  a: 1,
  b: 2,
  c: 3,
	x: 7,
	y: 100
};

const { c, ...rest } = obj;

console.log(c, rest); // 3 { a:1, b:2, x:7, y:100}
```


## 선택적 체이닝

`null`이나 `undefined` 타입의 경우 점표기법을 통해 속성에 접근하면 에러가 발생한다.  
이때 점표기법 앞에 `?` 기호를 넣어 사용하면 에러를 발생시키지 않고 해당 타입을 반환하여 에러가 발생되는 것을 방지할 수 있다.

```javascript
const user = null;

console.log(user.name); // 에러발생

console.log(user?.name); // undefined 
```

