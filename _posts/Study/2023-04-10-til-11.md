---
published: true
title:   "TIL-11 : JavaScript"
excerpt: "Today I Learned JavaScript String"

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

## String

문자열 관련 자주 사용하는 속성과 메서드 정리


### .length

`문자열의 길이`를 number형으로 반환하는 속성이다.  
공백도 카운트에 포함된다.

```javascript
const str = 'Hello, World!';

console.log(str.length); // 13
```

### .includes()

대상 문자에 `주어진 문자가 포함되어 있는지` 확인하여 boolean형으로 반환한다.  
`대소문자를 구분`하며, 두 번째 인수로 숫자를 넣을 경우 해당 인덱스부터 시작해서 문자가 포함되어 있는지 확인한다. 생략 시 기본값으로 0이 들어가 있다.

```javascript
const str = 'Hello, world!';

console.log(str.includes('Hello')); // true
console.log(str.includes('hello')); // false

// 인덱스 1에 해당하는 e부터 Hello 문자가 있는지 확인
console.log(str.includes('Hello', 1)); // false
```

### .indexOf() 

대상 문자에서 주어진 `문자와 일치하는 첫 번째 인덱스`를 반환한다.  
일치하는 문자가 없는 경우에는 `-1`을 반환한다.

```javascript
const str = 'Hello, world!';

console.log(str.indexOf('world')); // 7
console.log(str.indexOf('!')); // 12
console.log(str.indexOf('hi')); // -1
```

### .padEnd()

대상 문자의 길이가 지정된 길이보다 작으면, `주어진 문자를 지정된 길이까지 끝에 붙여` 새로운 문자를 반환한다.

```javascript
const str = '1234567';

console.log(str.padEnd(10, '0')); // 1234567000
console.log(str); // 1234567 기존의 문자열은 훼손되지 않고 남아있는다.

// 대상 문자의 길이가 지정한 길이보다 길면 대상 문자를 그대로 반환한다.
const str2 = '1234567890123';
console.log(str2.padEnd(10, '0')); // 1234567890123
```

### .padStart()
대상 문자의 길이가 지정된 길이보다 작으면 `주어진 문자를 지정된 길이까지 앞에 붙여` 새로운 문자를 반환한다.

```javascript
const str = '1234567';

console.log(str.padStart(10, '0')); // 0001234567
```

### .replace()

대상 문자에서 `패턴과 일치하는 부분을 교체`한 새로운 문자를 반환한다.

```javascript
const str = 'Hello!, Hello?';

// 해당 문자를 찾아 한번만 바꾼다.
console.log(str.replace('Hello', 'Hi')); // Hi!, Hello?

// 정규식 표현식을 사용하여 일치하는 모든 문자를 교체하는 경우
console.log(str.replace(/Hello/g, 'Hi')); // Hi!, Hi?

// 원본 데이터는 변함없다.
console.log(str); // 'Hello!, Hello?
```

### .slice()

대상 문자의 `일부를 추출`해 새로운 문자를 반환한다.  
`두 번째 인수 직전`까지 추출하고, 두 번째 인수를 생략할 경우 대상 문자의 끝까지 추출한다.

```javascript
const str = 'Hello, world!';

// 0 ~ 4까지 인덱스에 해당하는 문자를 추출
console.log(str.slice(0, 5)); // Hello
// 음수는 뒤에서부터 세는데 맨 마지막 문자는 -1에 해당한다.
// -1의 직전까지인 11 > 7 ~ 11까지 추출
console.log(str.slice(7, -1)); // world
// 7번째 부터 마지막까지 추출
console.log(str.slice(7)); // world!
// 원본 데이터는 변함없다.
console.log(str); // Hello, world!
```

### .split()
대상 문자를 주어진 `구분자`로 나눠 `배열` 데이터로 반환한다.

```javascript
const colors = 'Red, Blue, Green';

console.log(colors.split(', ')); // [ 'Red', 'Blue', 'Green' ]

// 공백도 하나의 문자로 포함해서 구분한다.
console.log(colors.split(',')); // [ 'Red', ' Blue', ' Green' ]

// 빈 문자열로 나눌 경우 모든 문자를 하나씩 쪼개서 배열에 담는다.
console.log(colors.split(''));
/* [
  'R', 'e', 'd', ',',
  ' ', 'B', 'l', 'u',
  'e', ',', ' ', 'G',
  'r', 'e', 'e', 'n'
  ]
*/
```

### .toLowerCase()
대상 문자를 영어 `소문자로 변환`해 새로운 문자로 반환한다.

```javascript
const str = 'Hello';

console.log(str.toLowerCase()); // hello
```

### .toUpperCase()
대상 문자를 영어 `대문자로 변환`해 새로운 문자로 반환한다.

```javascript
const str = 'Hello';

console.log(str.toUpperCase()); // HELLO
```

### .trim()

대상 문자의 `앞, 뒤 공백 문자를 제거`한 새로운 문자를 반환한다.  

```javascript
const str = '    Hello';
console.log(str.trim()); // Hello

// 앞뒤 공백 모두 제거 가능
const str2 = '    Hello   ';
console.log(str.trim()); // Hello

// 문자열 사이사이 공백은 제거되지 않는다.
const str3 = '    H e l l o   ';
console.log(str3.trim()); // H e l l o
```

