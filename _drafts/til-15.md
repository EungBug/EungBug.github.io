---
published: true
title:   "TIL-15 : JavaScript Module"
excerpt: "Today I Learned JavaScript Module!"

categories:
    - Study
tags:
    - JS

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-04-14
last_modified_at: 2023-04-14
---
<br>

## 모듈
`Module 시스템`은 하나의 JavaScript 파일로 모든 자원들을 관리하기 어렵기 때문에 나온 개념이다.  
모듈은 `특정 데이터들의 집합`을 의미하며 하나의 JavaScript 파일을 분리했을 때, `각각의 파일들`을 모듈이라고 부른다.

하나의 JS 파일에서 다른 JS 파일의 데이터를 사용할 때 해당 JS 파일이 모듈이라는 것을 브라우저에게 알려야한다.

```html
<script type="module" src="./js/main.js"></script>
```

하나의 JS 파일에서 다른 JS 파일로 데이터 또는 기능을 내보내기 할 때 `export` 키워드를 사용하고, 내보내기 한 데이터 또는 기능을 가져올 때 `import` 키워드를 사용해야 한다.


### 기본 내보내기/가져오기
기본 내보내기 방식을 사용하는 경우 `default` 키워드를 사용해야 하고, `단 한번만` 사용할 수 있다.

**module.js**

```javascript
export default 77
```

**main.js**

```javascript
// 기본 내보내기의 데이터를 가져올 때 가져와서 사용할 이름을 지정해야 한다.
import num from './module.js'

console.log(num) // 77
```

### 이름 내보내기 방식
내보내기 할 데이터의 이름을 지정하여 내보내기/가져오기 할 수 있으며, 여러개의 데이터를 내보낼 수 있다.  
내보낼 데이터 앞에는 `exoprt` 키워드를 붙이고, 가져올 데이터 앞에는 `import` 키워드를 붙인다.

**module.js**

```javascript
export const hello = 'Hello'
export const arr = []
export function hi() {}
```

**main.js**

```javascript
// 한개씩 가져올 경우
export { hello } from './module.js'

// 여러개를 한번에 가져올 경우
export { hello, arr, hi } from './module.js'
console.log(hello) // Hello
console.log(arr)   // []
console.log(hi)    //  f hi() {}
```
<br />

가져올 때 이름을 변경하고 싶은 경우엔 `as` 키워드를 사용하여 사용하고 싶은 이름을 작성하면 된다.

**module.js**

```javascript
export const hello = 'Hello'
```

**main.js**

```javascript
import { hello as world } from './module.js'

console.log(world) // Hello
```
<br />

module.js에서 내보내고 있는 `모든 데이터`를 객체형태로 한번에 가져오고 싶은 경우엔 `* (와일드카드)` 기호를 사용해서 가져올 수 있다.

**module.js**

```javascript
export const hello = 'Hello'
export const arr = []
export function hi() {}
```

**main.js**

```javascript
import * as datas from './module.js'
```
<br />

import 키워드는 JS 파일의 `최상단`에 작성해야 한다.  
최상단에 작성하지 않고 필요할 때 가져오고 싶은 경우엔 `import()` 함수를 사용하면 필요한 때에 데이터를 가져올 수 있다.

```javascript
import('./module.js').then(abc => {
	console.log(abc); // module.js의 모든 데이터를 abc 이름으로 가져옴 
})
```
