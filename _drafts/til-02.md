---
published: true
title:   "TIL-02 : CSS"
excerpt: "Today I Learned CSS!"

categories:
    - Study
tags:
    - [CSS]

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-03-21
last_modified_at: 2023-03-21
---

# CSS(Cascading Style Sheets)

css 문법은 `선택자`와 `선언부`로 구분된다.
```
선택자 {속성: 값;}
```
`선택자` : CSS 스타일을 적용할 대상(요소)를 지정하는 영역이다.  
`선언부` : 선택자에서 선택한 대상에 적용할 스타일을 작성하는 영역으로 선언부에는 반드시 속성과 값을 한 쌍으로 작성해야 한다.
값 뒤에는 `세미콜론(;)`을 넣어 스타일을 여러개 작성이 가능하다.  
<br>
`속성` : 스타일의 종류  
`값` : 스타일의 값  
`{}` : 스타일 범위의 시작과 끝을 의미한다.  

## 주석
---

CSS에서 주석은 `/* 와 */` 사이에 주석으로 남길 내용을 작성하면 된다.
```css
/* 주석내용 */
```

## CSS 적용 방법
---

1. 내부 스타일 시트 방법 (내장 방식)   
HTML 문서 내부에 `style`태그를 통해 작성하는 방식이다.  

```html
<style>
  div {
    color: red;
    margin: 20px;
  }
</style>
```

2. 외부 스타일 시트 방법  
별도의 css 파일을 작성 후 `link`태그를 사용해서 HTML 문서와 연결하는 방식이다.  
코드 유지보수가 가장 편하고 성능적으로 가장 좋아 실무에서 가장 많이 사용하는 방식이다.

```css
/* css 파일 */
div {
  color: red;
  margin: 20px;
}
```

```html
<!-- HTML 문서 내부 -->
<link rel="stylesheet" href="css 파일 경로">
```

3. 인라인 스타일 방법  
요소에 직접 `style`속성을 직접 작성하는 방식이다.

```html
<div style="color: red; margin: 20px;">
</div>
```

4. import 방식  
CSS의 `@import 규칙`으로 CSS 문서 안에서 또 다른 CSS 문서를 가져와 연결하는 방식이다.

main.css
```css
@import url("./box.css");

div{
  color: red;
  margin: 20px;
}
```
box.css
```css
.box {
  background-color: blue;
  padding: 20px;
}
```
html
```html
<link rel="stylesheet" href="./css/main.css">
```

## 선택자 - 기본
---

### * - 전체 선택자 
전체 선택자는 `* 기호`를 사용해 표시하고 모든 요소를 한 번에 선택한다.

```css
* { /* CSS 코드 */}
```

### 태그 선택자
태그 이름으로 선택자를 지정하는 방법이다.  
태그명과 일치하는 모든 요소를 한 번에 선택한다.

```css
태그명 { /* CSS 코드 */}
ex) h1 { color: red; }
```

### 클래스 선택자
클래스 선택자는 `.기호`를 붙이고 HTML의 class 속성 값을 이용해서 선택자를 지정하는 방식이다.  
실무에서 가장 많이 사용하는 선택자 지정 방식이고 class 속성값은 중복이 가능하기 떄문에 여러 곳에 하나의 스타일을 적용시킬 수 있다.

```css
.class속성값 { /* CSS 코드 */}
ex) .box { padding: 20px; }
```

### 아이디 선택자
아이디 선택자는 `# 기호`를 붙이고 HTML의 id 속성 값을 이용해서 선택자를 지정하는 방식이다. (id 속성값은 고유함)

```css
.id속성값 { /* CSS 코드 */}
ex) #title { color: red; }
```

## 복합 선택자
---

### 일치 선택자
`ABCXYZ`처럼 선택자 ABC와 XYZ를 동시에 만족하는 요소를 지정하는 방식이다.

```css
/* div태그이면서 class가 box인 요소 */
div.box { color: red; }
```

### 자식 선택자
`ABC > XYZ`처럼 선택자 ABC의 자식 요소 XYZ를 찾아 지정하는 방식이다.

```css
/* div태그의 자식요소 중 class가 box인 요소를 찾는다 */
div > .box { color: red; }
```

### 하위 선택자
`ABC XYZ`처럼 ABC 요소(부모요소)의 하위 요소 중 XYZ를 선택하여 지정하는 방식이다. `띄어쓰기`를 통해 구분한다.

```css
/* div태그의 하위 요소 중 p태그로 작성된 모든 요소를 선택 */
div p { color: red; }
```

### 인접 형제 선택자
`ABC + XYZ`처럼 ABC의 `다음` 형제 요소 중 XYZ를 선택하고 `인접한 하나`를 선택하여 지정하는 방식이다.

```
h1 + h2 { color: red; }

<h2>제목2</h2>
<h1>제목1</h1>
<h2>제목2-1</h2>  < h1의 다음 형제요소이면서 인접한 h2만 스타일 적용
<h2>제목2-2</h2>
```

### 일반 형제 선택자
`ABC ~ XYZ`처럼 ABC의 `다음` 형제 요소 중 XYZ 요소를 모두 선택하여 지정하는 방식이다.

```css
h1 ~ h2 { color: red; }
```


## 가상 클래스 선택자
---

### 동적 가상 클래스 선택자
사용자의 행동에 따라 동적으로 변하는 상태를 이용해 선택자를 지정하는 방식이다.

| 종류 | 설명 |
| -- | -- |
| :hover | 요소에 마우스 커서가 올라가 있는 동안 해당 태그가 선택자로 지정된다. |
| :active | 요소를 마우스로 클릭하고 있는 동안 해당 태그가 선택자로 지정된다. |

```css
p:hover {
  color: red;
}

p:active {
  color: blue;
}
```

### 입력 요소 가상 클래스 선택자
입력 요소의 특정 상태를 이용해 선택자로 지정하는 방식으로 일부 요소만 사용할 수 있다.  

| 종류 | 설명 |
| -- | -- |
| :foucs | 입력 요소에 커서가 활성화되면 선택자로 지정한다. |
| :checked | 체크박스가 선택되어 있으면 선택자로 지정한다. |
| :disabled | 요소가 비활성화되면 선택자로 지정된다. |
| :enabled | 요소가 활성화되면 선택자로 지정된다. |

`tabindex="-1"`속성을 사용하면 focus가 될 수 없는 요소도 focus가 될 수 있는 요소로 만들 수 있다.
```
<div tabindex="-1">
```

```css
input:focus {
  color: red;
}
input:checked {
  background-color: red;
}
input:disabled {
  background-color: gray;
}
input:enabled {
  background-color: #fff;
}
```

### 구조적 가상 클래스 선택자

| 종류 | 설명 |
| -- | -- |
| ABC:first-child | ABC 요소가 형제 요소 중  첫 번째 요소라면 선택하여 지정한다. |
| ABC:last-child | ABC 요소가 형제 요소 중 마지막 요소라면 선택하여 지정한다. |
| ABC:nth-child(n) | ABC 요소가 형제 요소 중 n번째 요소라면 선택하여 지정한다. |
| ABC:nth-last_child(n) | ABC 요소가 형제 요수 중 마지막에서 n번째 요소라면 선택하여 지정한다. |


참고사항
```css
/* 2n = 2번째, 4번째.. 2의 배수와 일치하는 요소들 선택 (짝수번째)
  n은 0부터 시작된다.
*/
*:nth-child(2n) { /* CSS 코드 */}
```

### 부정 선택자
`ABC:not(XYZ)` 선택자 XYZ가 아닌 ABC 요소를 선택하여 지정하는 방식이다.


### 가상 요소 선택자
가상 요소 선택자는 HTML에 작성된 요소는 아니지만, 마치 존재하는 것처럼 취급해 선택하는 방식이다. `콜론 2개(::)`를 붙여서  사용한다.  
<br>
`content`는 필수로 작성해야하고(공백도 가능) 주로 요소의 앞 또는 뒤에 특정 스타일을 적용하고 싶을 때 사용하는 선택자이다.

```css
선택자::가상 요소 선택자 { /* CSS 코드 */ }
```

| 종류 | 설명 |
| -- | -- |
| ::befor | 선택자의 앞의 공간을 선택한다 | 
| ::after | 선택자의 뒤의 공간을 선택한다 |

```css
div::before {
  content: ""; /* content 값으로 삽입할 내용 작성 (인라인 요소)*/
}
div::after {
  content: "";
}
```


### 속성 선택자
`[속성]` 또는 `[속성=값]`처럼 대괄호 안에 속성을 작성하여 선택하는 방식이다.

```css
[disabled] { /* CSS 코드 */ }
[class="box"] { /* CSS 코드 */ }
```


## CSS 특징
---

### 스타일 상속
`상속`은 부모 요소에 적용된 스타일을 자식 요소가 그대로 적용되는 현상을 말한다.  
모든 속성들은 아니지만 _글자나 문자_ 와 관련된 css 속성들이 상속된다.  

`inherit` : 상속되지 않는 속성도 강제로 상속되도록 할 수 있다.(강제 상속)  


### 선택자 우선순위
CSS는 같은 요소에 여러 스타일이 적용된 경우, 기본 스타일 시트보다 사용자가 정의한 스타일 속성이 우선 적용되고 한 가지 선언에 대해서만 적용된다. 이는 CSS가 <u>단계적으로 적용되는 스타일</u>을 뜻하기 때문이다.  
따라서 같은 요소가 여러 가지 선언의 대상이 된 경우, 어떤 선언의 css 속성을 우선 적용할지 결정하는 방법으로 `우선순위 점수`에 따라 적용된다.

`점수가 높은 선언`이 우선되고, 점수가 같으면 `가장 마지막에 해석된 선언`이 우선된다.  

| 선택자 | 예시 | 점수 |
| -- | -- | -- |
| 전체 선택자 | * | 0 |
| 태그 선택자 | div, p | 1 |
| 가상 요소 선택자 | ::before, ::after | 1 |
| 클래스 선택자 | .box, .title | 10 |
| 가상 클래스 선택자 | :hober, :visited | 10 |
| 아이디 선택자 | #title, #box | 100 |
| 인라인 스타일 | style="color:red" | 1000 |
|!important| {color: red !important; } | 99999999999|

_상속은 점수에 포함되지 않는다_ 

**점수 계산 방법*
> 인라인(1000), 아이디(100), 클래스/가상 클래스(10), 태그/가상 요소(1)
```css
.list li.item {} /* 0 0 2 1  > 21점 */ 
.list li:hover {} /* 0 0 2 1 > 21점 */
#submit span {} /* 0 1 0 1 > 101점 */
header .menu li:nth-child(2) {} /* 0 0 2 2  22점 */ 
:not(.box) {} /* 0 0 1 0 > 10점 not은 점수 계산 x */
```









