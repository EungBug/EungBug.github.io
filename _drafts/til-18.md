---
published: true
title:   "TIL-18 : Map, Set Type"
excerpt: "Today I Learned Map, Set!"

categories:
    - Study
tags:
    - JS

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-05-12
last_modified_at: 2023-05-12
---
<br>

## Array, Set, Map

Map과 Set은 ES6에서 새롭게 들어온 `자료구조`이다.

Set과 Map은 Array와는 다른 특징들이 있다.  

Array 
- 요소의 순서를 보장하여 인덱스로 요소에 접근이 가능하다.
- 중첩 데이터를 가질 수 있다.
- Array에서 제공하는 다양한 메서드를 사용할 수 있다.

Set
- Set은 `중복을 허용하지 않는 데이터 집합`이다.
- Array와 다르게 `요소의 순서를 보장하지 않는다.`
- Array에서 제공하는 프로퍼티나 메서드는 사용할 수 없지만 Set에서 사용할 수 있는 프로퍼티나 메서드가 있다.
- 중첩 데이터를 가질 수 있다.

Map
- `Key-value` 형식으로 데이터를 저장한다.
- Array에서 제공하는 프로퍼티나 메서드는 사용할 수 없지만 Set에서 사용할 수 있는 프로퍼티나 메서드가 있다.
- 요소의 순서를 보장한다.
- `key 값을 중복할 순 없지만, 중복 value는 허용된다.`
- Object와 달리 key에 문자형 외에도 `여러 데이터 타입`이 허용된다.


## Set
set은 중복을 허용하지 않는 데이터 집합으로 고유한 값을 가지는 목록이 필요할 때 주로 사용한다.

set 객체는 new 키워드와 함께 `set 생성자` 함수를 통해 생성할 수 있다.
인수로 `배열이나 Iterable`을 받아 초기화 할 수 있고, 아무것도 전달하지 않는 경우 빈 set 객체가 생성된다.  

```js
const ids = new Set();
// Set(0) {}

const ids2 = new Set([1, 2, 3]);
// Set(3) { 1, 2, 3 }
```

초기화 시 중복되는 데이터가 있는 경우 `중복 값은 제외`하고 생성된다.

```js
const ids = new Set([1, 1, 2, 2, 3, 4]);
// Set(4) { 1, 2, 3, 4 }
```

순서를 보장하지 않기 때문에 인덱스로 접근 시 `undefined`가 반환된다.

```js
const firstId = ids[0];
console.log(firstId); // undefined
```

Set 객체에서 사용할 수 있는 여러 메서드들이 있다.

```js
const ids = new Set([1, 2, 3]);

// size : 요소 수 확인
console.log(ids.size); // 3

// add() : 요소 추가
ids.add(99);
console.log(ids); // Set(4) { 1, 2, 3, 99 }

// has() : 해당 요소를 가지고 있는지 확인
console.log(ids.has(1)); // true
console.log(ids.has(7)); // fase

// delete() : 요소 삭제
ids.delete(3);
console.log(ids); // Set(3) { 1, 2, 99 }
```

`entries()` 메서드를 사용하면 set객체를 Iterable로 반환하는데 반환된 Interable을 통해 반복문을 사용할 수 있다.

```js
// entries() : Iterable을 반환하여 반복문이 가능하도록
for (const id of ids.entries()) {
  console.log(id);
}
// [ 1, 1 ]
// [ 2, 2 ]
// [ 99, 99 ]
```

이때 각각 반환되는 요소에는 배열형태로 값이 2개씩 들어가는데,
forEach 메서드와 인터페이스를 통일시키기 위한 이유로 2개의 값이 들어간다.  
`Array.prototype.forEach`의 경우 순서 즉, `index`를 가지고 있어서 두 번째 인수로 index 값을 받을 수 있지만 set에서는 요소의 순서를 보장하지 않기 때문에 index는 받지 않고 같은 값이 들어간다고 보면 된다.

추가적으로 set은 요소 삭제 시 set 객체가 가지고 있지 않는 값을 삭제하려고 해도 오류가 발생하지 않는다는 특징이 있다.

```js
const ids = new Set([1, 2, 3]);
ids.delete(99); // 오류 없이 아무 반응 없음
```

## Map

map 객체는 데이터에 추가적으로 정보를 저장하고 싶지만 실제 데이터는 건드리지 않고 데이터를 가공할 때 주로 사용한다.

map 객체도 set과 동일하게 new 키워드와 함께 `map 생성자` 함수를 통해 생성할 수 있다.
map은 `배열 안에 배열 형태`의 인수를 받을 수 있으며, 아무것도 전달하지 않는 경우 빈 map 객체가 생성된다.  

```js
const map = new Map();
// Map(0) {}

const map2 = new Map([
  ['key1', 'value1'],
  ['key2', 'value2']
]);
//Map(2) { 'key1' => 'value1', 'key2' => 'value2' }
```

map의 key에는 어떠한 데이터 타입이라도 들어갈 수 있다.

```js
const jain = { name: 'Jain' };
const tom = { name: 'Tom' };

const users = new Map([
  [jain, { age: 20, hobby: 'coding' }],
  [tom, { age: 25, hobby: 'game' }]
]);

console.log(users);
// Map(2) {
//   { name: 'Jain' } => { age: 20, hobby: 'coding' },
//   { name: 'Tom' } => { age: 25, hobby: 'game' }
// }
```

Map 객체 또한 Map 객체에서 사용할 수 있는 여러 메서드들이 있다.

```js
const jain = { name: 'Jain' };
const tom = { name: 'Tom' };

const users = new Map([
  [jain, { age: 20, hobby: 'coding' }],
  [tom, { age: 25, hobby: 'game' }]
]);

// size : 요소 수 확인
console.log(users.size); // 2

// set(key, value) : 요소 추가
users.set({ naem: 'Kim' }, { age: 30, hobby: 'Cook' });
console.log(users); 
// Map(3) {
//   { name: 'Jain' } => { age: 20, hobby: 'coding' },
//   { name: 'Tom' } => { age: 25, hobby: 'game' },
//   { naem: 'Kim' } => { age: 30, hobby: 'Cook' }
// }

// get() : 요소 값 확인
console.log(users.get(tom)); // { age: 25, hobby: 'game' }

// has() : 요소를 가지고 있는지 확인
console.log(users.has(jain)); // true

// delete() : 요소 삭제
users.delete(tom);
console.log(users); 
// Map(2) {
//   { name: 'Jain' } => { age: 20, hobby: 'coding' },
//   { naem: 'Kim' } => { age: 30, hobby: 'Cook' }
// }
```
