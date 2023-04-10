---
published: true
title:   "TIL-12 : JavaScript"
excerpt: "Today I Learned JavaScript Number"

categories:
    - Study
tags:
    - JS

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-04-10
last_modified_at: 2023-04-10
---
<br>

## Number

Number형과 관련된 자주 사용하는 속성 또는 메서드 정리

### .toFixed()

숫자를 지정된 `고정 소수점 표기까지 표현하는 문자`로 반환한다.

```javascript 
const num = 3.1415926535;

console.log(num.toFixed(2)); // '3.14' (string)

// 문자열을 다시 Number 타입으로 변환
console.log(parseFloat(num.toFixed(2))); // 3.14 (number)
```

### .toLocaleString()

숫자를 `현지 언어 형식의 문자`로 반환한다.

```javascript 
const num = 10000;

console.log(num.toLocaleString()); // 10,000 string
console.log(`${num.toLocaleString()}원`); // 10,000원
```

### Number.isInteger()

해당 `숫자가 정수인지 확인`하여 `boolean형`으로 반환한다.

```javascript 
const num = 123;
const pi = 3.14;

console.log(Number.isInteger(num)); // true
console.log(Number.isInteger(pi)); // false
```

### Number.isNaN()

주어진 값이 `NaN인지 확인`하여 boolean형으로 반환한다.

```javascript 
const num1 = NaN;
const num2 = 123;
const num3 = 'aaa';
const num4 = null;

console.log(Number.isNaN(num1)); // true
console.log(Number.isNaN(num2)); // false
console.log(Number.isNaN(num3)); // false
console.log(Number.isNaN(num4)); // false
```

### Number.paseInt() / parseInt()

주어진 값을 파싱해 특정 진수의 `정수로 반환`한다.  
진수 생략 시 기본값은 10진수이다.

```javascript 
const str = '3.1415926535';
const num = 3.1415926535;

console.log(Number.parseInt(str, 10)); // 3
console.log(Number.parseInt(num, 10)); // 3

// parseInt도 똑같이 동작한다.
console.log(parseInt(str, 10)); // 3
console.log(parseInt(str)); // 3
```

### Number.parseFloat() / parseFloat()

주어진 값을 파싱해 `부동소수점 실수로 반환`한다.

```javascript 
const str = '3.1415926535';
const num = 3.1415926535;

console.log(Number.parseFloat(str, 10)); // 3.1415926535
console.log(Number.parseFloat(num, 10)); // 3.1415926535

console.log(parseFloat(num)); // 3.1415926535
```

## Math 객체

Math 객체는 `수학적인 상수와 함수를 위한 속성과 메서드를 가진 내장 객체`로 number형만 지원한다.


### Math.abs()

`절댓값`을 반환한다.

```javascript 
console.log(Math.abs(10)); // 10
console.log(Math.abs(-10)); // 10
```

### Math.ceil()

주어진 숫자를 `올림`해서 `정수`로 반환한다.

```javascript
Math.ceil(3.14) // 4
```

### Math.floor() 

주어진 숫자를 `내림`해서 `정수`로 반환한다.

```javascript
Math.ceil(3.14) // 3
```

### Math.max() 

주어진 숫자 인수 중 `가장 큰 숫자를 반환`한다.

```javascript
Math.max(1, 13, 44, 560) // 560
```

### Math.min()

주어진 숫자 인수 중 `가장 작은 숫자를 반환`한다.

```javascript
Math.min(4, 10, 423, 0, -1) // -1
```

### Math.pow()
주어진 숫자의 `거듭제곱`한 값을 반환한다.

```javascript
Math.pow(4, 2) // 16
```

### Math.random()
`0 ~ 1 사이의 난수`를 반환한다.

```javascript
const num = Math.random();

console.log(num); // 0.3448147....


// 특정 범위의 랜덤한 정수를 만드는 함수
function random(min = 0, max = 10) {
  return Math.floor(Math.random() * (max - min)) + min;
}

// 1 ~ 100사이의 랜덤한 정수 
console.log(random(1, 100)); // 38
```

### Math.round()
주어진 숫자를 `반올림`해서 `정수`를 반환한다.

```javascript
const num1 = 3.14;
const num2 = 4.67;

console.log(Math.round(num1)); // 3
console.log(Math.round(num2)); // 5
```