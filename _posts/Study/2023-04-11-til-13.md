---
published: true
title:   "TIL-13 : JavaScript Date"
excerpt: "Today I Learned JavaScript Date!"

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

## Date

Date는 `날짜와 시간`을 위한 메서드를 제공하는 `내장 객체`이면서 `생성자 함수`이다.  

- `타임스탬프` : 날짜 정보를 가지고 있는 문자 데이터를 말한다. (ex. Mon Apr 10 2023 15:22:05 GMT+0900 (한국 표준시) )

```javascript
// new 연산자와 함께 생성자 함수를 호출하여 Date 객체를 반환 
const date = new Date();

console.log(date); // Mon Apr 10 2023 15:22:05 GMT+0900 (한국 표준시)

// 생성자 함수에 지정할 시간 데이터를 인수로 넣어 만들 수 있다.
// month는 zerobased를 채택해서 사용한다.
const d1 = new Date(2023, 3, 10, 15, 30, 30);
console.log(d1); // Mon Apr 10 2023 15:30:30 GMT+0900 (한국 표준시)

const d2 = new Date('Mon Apr 10 2023 15:30:30 GMT+0900 (한국 표준시)')
console.log(d2); // Mon Apr 10 2023 15:30:30 GMT+0900 (한국 표준시)
```

### .getFullYear() / .setFullYear()

날짜 인스턴스의 `연도`를 반환하거나 지정한다.

```jsx
const date = new Date();

console.log(date.getFullYear()); // 2023

date.setFullYear(2024);
console.log(date.getFullYear()); // 2024
console.log(date); // 2024-04-10T06:50:31.775Z
```

### .getMonth() / .setMonth()

날짜 인스턴스의 `월`을 반환하거나 지정한다.  
유일하게 월은 `0부터 시작`한다. 0 = 1월, 11 = 12월 (zero-based-numbering)

```jsx
const date = new Date();

console.log(date.getMonth()); // 4월이지만 3을 반환한다.

date.setMonth(4); // 5월로 지정하고자 할때 4를 인수로 넘긴다.
console.log(date.getMonth()); // 5월로 지정되지만 4를 반환한다.
console.log(date); // 2023-05-10T06:55:37.131Z


console.log(date.getMonth() + 1); // 5
```

### .getDate() / .setDate()

날짜 인스턴스의 `일`을 반환하거나 지정한다.

```jsx
const date = new Date();

console.log(date.getDate()); // 10
console.log(date); // Mon Apr 10 2023 15:59:23 GMT+0900 (한국 표준시)

date.setDate(11);
console.log(date.getDate()); // 11
console.log(date); // Tue Apr 11 2023 15:59:23 GMT+0900 (한국 표준시)
```

### .getHours() / .setHours()

날짜 인스턴스의 `시간`을 반환하거나 지정한다.

```jsx
const date = new Date();

console.log(date.getHours()); // 16
console.log(date); // Mon Apr 10 2023 16:07:16 GMT+0900 (한국 표준시)

date.setHours(12);
console.log(date.getHours()); // 12
console.log(date); // Mon Apr 10 2023 12:07:16 GMT+0900 (한국 표준시)
```

### .getMinutes() / .setMinutes()

날짜 인스턴스의 `분`을 반환하거나 지정한다.

```jsx
const date = new Date();

console.log(date.getMinutes()); // 7
console.log(date); // Mon Apr 10 2023 16:07:16 GMT+0900 (한국 표준시)

date.setMinutes(30);
console.log(date.getMinutes()); // 30
console.log(date); // Mon Apr 10 2023 16:30:16 GMT+0900 (한국 표준시)
```

### .getSeconds() / .setSeconds()

날짜 인스턴스의 `초`를 반환하거나 지정한다.

```jsx
const date = new Date();

console.log(date.getSeconds()); // 16
console.log(date); // Mon Apr 10 2023 16:07:16 GMT+0900 (한국 표준시)

date.setSeconds(30);
console.log(date.getSeconds()); // 30
console.log(date); // Mon Apr 10 2023 16:07:30 GMT+0900 (한국 표준시)
```

### .getDay() 

날짜 인스턴스의 `요일`을 숫자로 반환한다.
0부터 6까지 반환하며 0부터 일요일을 의미하고 순차적으로 마지막 6은 토요일을 의미한다.

```jsx
const date = new Date();

console.log(date.getDay()); // 1 (월요일)
```

### .getTime() / .setTime()

날짜 인스턴스가 `유닉스 타임으로부터 경과된 시간`을 `밀리초(ms)`로 반환하거나 지정한다.

```jsx
const date = new Date();

console.log(date.getTime()); // 1681110916086
console.log(date); // Mon Apr 10 2023 16:15:16 GMT+0900 (한국 표준시)

date.setTime(1700000000000)
console.log(date.getTime()); // 1700000000000
console.log(date); // Wed Nov 15 2023 07:13:20 GMT+0900 (한국 표준시)
```

### Date.now()

`메서드가 호출될 때` 유닉스 타임으로부터 경과된 시간의 밀리초(ms)를 반환한다.

```jsx
const date = new Date();

console.log(date.getTime()); // 1681110916086
console.log(date); // Mon Apr 10 2023 16:15:16 GMT+0900 (한국 표준시)

date.setTime(1700000000000)
console.log(date.getTime()); // 1700000000000
console.log(date); // Wed Nov 15 2023 07:13:20 GMT+0900 (한국 표준시)
```
