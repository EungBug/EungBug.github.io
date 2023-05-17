---
published: true
title:   "TIL-19 : TypeScript"
excerpt: "Today I Learned TypeScript!"

categories:
    - Study
tags:
    - TS

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-05-17
last_modified_at: 2023-05-17
---
<br>

# 타입스크립트란?

자바스크립트 기반의 `정적 타입 문법`을 추가한 프로그래밍 언어  
이 말은 즉 "데이터의 타입을 정해놓고 사용한다."라는 의미이다.  

타입스크립트는 `자바스크립트로 변환(컴파일) 후` 브라우저나 Node.js 환경에서 동작한다.  

자바스크립트 = 동적 타입 ⇒ `런타임`에서 동작할 때 타입 오류를 확인한다.  
타입스크립트 = 정적 타입(정적 타입의 컴파일 언어) ⇒ `코드 작성 단계`에서 타입 오류를 확인한다.  

타입스크립트는 자바스크립트를 완변하게 호환한다.(자바스크립트의 `슈퍼셋`)

```tsx
let hello: string = 'Hello, world!';

// 오류 발생 string 타입의 변수에 number 타입의 값을 할당할 수 없음
let hello: string = 123; 
```

## 타입스크립트에서 사용하는 타입들

### String

변수명 뒤에 콜론(:)과 함께 `string` 타입을 명시해준다.

```tsx
let str: string
let name: string = 'EungBug'
let hi: string = `Hi, ${name}`
```
### Number

변수명 뒤에 콜론(:)과 함께 `number` 타입을 명시해준다.

```tsx
let num: number
let age: number = 15
let float: number = 3.14
let infinity: number = Infinity
let nan: number = NaN
```

### Boolean

변수명 뒤에 콜론(:)과 함께 `boolean` 타입을 명시해준다.

```tsx
let isValid: boolean
let isChecked: boolean = true
```

### Null / Undefined

변수명 뒤에 콜론(:)과 함께 `null`, `undefined` 타입을 명시해준다.

```tsx
let nul: null
let und: undefined
```

null의 경우 null 값이 할당 되기 전 변수를 참조하는 경우 에러가 발생한다.
```tsx
console.log(nul) // 에러 발생

// null 타입은 null 밖에 할당할 수 없다.
nul = null
```

null 타입의 경우 null 밖에 할당할 수 없기 때문에 실제 매우 불필요한 타입으로 잘 사용하지 않는다.

### 배열

`대괄호[]` 앞에 배열에 들어갈 `요소들의 타입`을 같이 명시해준다.  

string타입의 요소들로만 이루어진 배열을 생성할 때는 아래와 같다.

```tsx
const colors: string[] = ['Red', 'Blue', 'Green']

// string 타입이 아닌 다른 타입의 아이템을 추가할 경우 에러가 발생한다.
colors.push(123) // 에러 발생
```

```tsx
// 배열의 모든 아이템은 number 타입이여야한다.
const numbers: number[] = [1, 2, 3, 4, 5]

// 여러 데이터 타입을 사용하는 경우)
const union: (string | number)[] = ['AAA', 1, 2, 'BBB']
```


