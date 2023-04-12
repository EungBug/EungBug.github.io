---
published: true
title:   "TIL-14 : JavaScript Array"
excerpt: "Today I Learned JavaScript Array!"

categories:
    - Study
tags:
    - JS

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-04-13
last_modified_at: 2023-04-13
---
<br>

## 배열
배열에서 사용할 수 있는 속성과 메서드들 정리

### .length

`배열의 길이`를 숫자로 반환한다.

```javascript
const arr = [1, 2, 3];

console.log(arr.length); // 3
```
### .at()
대상 배열을 `인덱싱`할 때 사용한다. ()안에 음수 값을 넣으면 뒤에서부터 인덱싱한다.

```javascript
const arr = [1, 2, 3];

console.log(arr[0]); // 1
console.log(arr.at(0)); // 1
console.log(arr(arr.length - 1)) // 3
console.log(arr.at(-1)); // 3
```

### .concat()
대상 배열과 주어진 배열을 `병합`해 새로운 배열은 변환한다. 이때 원본 배열의 데이터는 변경되지 않는다.

```javascript
const arr1 = [1, 2, 3];
const arr2 = [4, 5, 6];
const arr3 = arr1.concat(arr2);
// 전개연산자도 동일한 기능을 한다.
const arr4 = [...arr1, ...arr2];

console.log(arr3); // [1, 2, 3, 4, 5, 6]
```

### .every()
대상 배열의 `모든 요소가 콜백 함수에서 True를 반환하는지` 확인한다.

```javascript
const arr = [1, 2, 3, 4];
const isValid = arr.every(item => item < 5);

console.log(isValid); // true
```

### .filter()
`콜백 함수를 통과`하는 `모든 요소`를 새로운 배열로 반환한다. 모든 요소가 콜백 함수에서 통과하지 못하는 경우 `빈 배열`을 반환한다.

```javascript
const arr = [1, 110, 22, 45, 9, 399, 14];
const filteredArr = arr.filter(num => num < 30);
const filteredArr2 = arr.filter(num => num < 0);

console.log(filterdArr); // [1, 22, 9, 14]
console.log(filteredArr2); // []
```

### .find() 
대상 배열에서 콜백 함수를 통과하는 첫 번째 요소를 반환한다.

```javascript
const arr = [1, 110, 22, 45, 9];
const foundItem = arr.find(item => item > 10);

console.log(foundItem); // 110
```

### .findIndex() 
대상 배열에서 콜백 함수를 통과하는 첫 번째 요소의 인덱스를 반환한다.

```javascript
const arr = [1, 110, 22, 45, 9];
const index = arr.findIndex(item => item > 10);

console.log(index); // 1
```

### .flat()
대상 배열의 모든 하위 배열을 `지정한 깊이`까지 이어붙인 새로운 배열을 생성한다.  
깊이의 기본값은 `1`이고, `Infinity`를 넣을 경우 깊이 상관없이 모두 이어 붙인다.

```javascript
const arr = [1, 2, [3, 4]];
const arr2 = [1, 2, [3, 4, [5, 6]];

console.log(arr.flat()); // [1, 2, 3, 4]
console.log(arr2.flat()); // [1, 2, 3, 4, [5, 6]]
console.log(arr2.flat(2)); // [1, 2, 3, 4, 5, 6]
console.log(arr2.flat(Infinity)); // [1, 2, 3, 4, 5, 6]
```

### .forEach()
대상 배열의 `길이만큼` 주어진 `콜백을 실행`한다.

```javascript
const arr = [1, 2, 3];

arr.forEacth(item => console.log(item)); 
```

### .includes()
대상 배열이 `특정 요소를 포함하고 있는지` 확인한다. 문자 데이터의 경우는 대소문자를 구분한다.

```javascript
const arr = [1, 2, 3];
console.log(arr.includes(2); // true
console.log(arr.includes(5); // false
```

### .join()
대상 배열의 모든 요소를 `구분자`로 `연결`한 문자를 반환한다.

```javascript
const arr = ['Red', 'Bule', 'Green'];

// 아무것도 인수로 안 넣으면 ,로 구분
console.log(arr.join()); // Red,Blue,Green
console.log(arr.join(', ')); // Red, Blue, Green
```

### .map()
대상 배열의 길이만큼 주어진 콜백을 실행하고, `콜백의 반환 값을 모아 새로운 배열을 반환`한다. 이때 원본 배열의 데이터는 변경되지 않는다.

```javascript
const arr = [1, 2, 3, 4];
const newArr = arr.map(item => item * 2)

console.log(newArr); [ 2, 4, 6, 8]
```

### .pop()
대상 배열에서 `마지막 요소를 제거`하고 그 요소를 반환한다. 이때 대상 배열의 원본 데이터는 변경된다.

```javascript
const colors = ['Red', 'Blue', 'Green'];
console.log(colors.pop()); // Green
console.log(colors); // ['Red', 'Blue']
```

### .push()
대상 배열의 마지막에 `하나 이상의 요소를 추가`하고, 배열의 새로운 길이를 반환한다. 이때 대상 배열의 원본 데이터는 변경된다.

```javascript
const colors = ['Red', 'Blue', 'Green'];

const newLength = colors.push('Oragne');
console.log(newLength); // 4
console.log(colors); ['Red', 'Blue', 'Green', 'Orange'];

colors.push('Yellow', 'Gray');
console.log(colors); ['Red', 'Blue', 'Green', 'Orange', 'Yellow', 'Gray'];
```

### .reduce()
대상 배열의 길이만큼 주어진 콜백을 실행하고, 마지막에 호출되는 콜백의 반환 값을 반환한다.  
각 콜백의 반환 값은 다음 콜백으로 전달된다.

```javascript
const arr = [1, 2, 3];

// 0 = 초기값으로 accumulator로 들어간다.
// currentValue에 배열 요소가 하나씩 들어간다.
const sum = arr.reduce((accumulator, currentValue) => {
	return accumulator + currentValue;
}, 0)

console.lgo(sum) // 6
```

### .reverse()
대상 배열의 순서를 `반전`한다. 이때 배열 원본 데이터는 변경된다.

```javascript
const arr = [1, 2, 3];
const reversed = arr.reverse();

console.log(arr); // [3, 2, 1]
console.log(reversed); // [3, 2, 1]
```

### .shift() 
대상 배열에서 `첫 번째 요소를 제거`하고, 제거된 요소를 반환한다. 이때 대상 배열의 원본 데이터는 변경된다.

```javascript
const arr = [1, 2, 3];

console.log(arr.shift()); // 1
console.log(arr); // [2, 3]
```

### .slice()
대상 배열의 `일부를 추출`해 새로운 배열을 반환한다.  
두 번째 인수 `직전`까지 추출하고, 두 번째 인수를 생략할 경우 대상 배열의 끝까지 추출하여 반환한다.

```javascript
const arr = [1, 2, 3, 4, 5, 6, 7];

console.log(arr.slice(0, 3)); // [1, 2, 3]
console.log(arr.slice(4, -1)); // [5, 6]
console.log(arr.slice(4)); // [5, 6, 7]
console.log(arr); // [1, 2, 3, 4, 5, 6, 7]
```

### .some()
대상 배열의 `어떤 요소라도` 콜백 함수를 통과하는지 확인한다. 하나라도 통과할 경우 `true`를 반환한다.

```javascript
const arr = [1, 2, 3, 4];
const isValid = arr.some(item => item > 3);

console.log(isValid); // true
```

### .sort()
대상 배열을 콜백의 반환(음수, 양수, 0) 값에 따라 정렬한다.  
콜백을 제공하지 않는 경우 요소를 문자열로 변환하고 유니코드 포인트 순서로 정렬한다. 이때 대상 배열의 원본 데이터는 변경된다.

```javascript
const numbers = [4, 17, 1, 33, 94, 10, 0];

numbers.sort()
console.log(numbers); // [0, 1, 10, 17, 33, 4, 94];

numbers.sort((a, b) => a - b) 
// 음수가 나오면 a가 b보다 작다고 판단하여 a를 먼저 정렬
console.log(numbers); // [0, 1, 4, 10, 17, 33, 94];

// 양수가 나오면 a가 b보다 크다고 판단하여 a를 뒷 순서로 정렬 
numbers.sort((a, b) => b - a)
console.log(numbers); // [94, 33, 17, 10, 4, 1, 0]
```

### .splice()
대상 배열에 요소를 추가하거나 삭제하거나 교체한다. 이때 배열의 원본 데이터는 변경된다.

```javascript
const arr = [1, 2, 3];

// .splice(변경하고자 하는 인덱스, 삭제할 아이템 수, 새로 추가할 아이템)
arr.splice(2, 0, 10);
console.log(arr); // [1, 2, 10, 3]

arr.splice(1, 1);
console.log(arr); // [1, 10, 3]
```

### .unshift()
새로운 요소를 대상 배열의 맨 앞에 추가하고 새로운 배열의 길이를 반환한다. 이때 배열의 원본 데이터는 변경된다.

```javascript
const arr = [1, 2, 3];

console.log(arr.unshift(0)); // 4
console.log(arr); // [0, 1, 2, 3]
```

### Array.from() 
유사 배열을 실제 배열로 반환한다.

```javascript
const arraylike = {
	0: 'A',
	1: 'B',
	2: 'C',
	length: 3 // 유사배열에는 length가 필수
};

console.log(arraylike.constructor === Array); // false
console.log(Arraylike.constructor === Object); // true


Array.from(arraylike).forEach(item => console.log(item));
// A
// B
// C
```

### Array.isArray()
배열 데이터인지 확인하여 boolean형을 반환한다.

```javascript
const array = [1, 2, 3];
const arraylike = {
	0: 'A',
	1: 'B',
	2: 'C',
	length: 3
};

console.log(Array.isArray(array)); // true
console.log(Array.isArray(arraylike)); // false 
```

