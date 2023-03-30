---
published: true
title:   "TIL-07 : CSS 변수 사용"
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

date: 2023-03-29
last_modified_at: 2023-03-29
---

## 사용자 지정 속성 

JavaScript에서 변수를 선언하고 여러 곳에서 사용할 수 있듯이 CSS에서도 `사용자 지정 속성`을 변수처럼 만들어서 사용할 수 있다.

아래와 같이 h1과 h2 태그의 배경 색상으로 red 색상 값을 적용한 상황이라고 하고  

```css
h1 {
  background-color: red;
}

h2 {
  background-color: red;
}
```
만약 배경 색상을 전부 blue로 변경하고 싶을 때 일일이 선택자를 찾아서 수정해줘야 한다.  

```css
h1 {
  background-color: blue;
}

h2 {
  background-color: blue;
}
```

이럴 때 red 색상 값 대신 사용자 지정 속성을 만들어 해당 값을 `참조`한다면, 이 CSS 변수의 속성값만 수정하면 되기 때문에 
`유지보수` 측면에서 큰 장점이며, 변수명을 통해 의미를 바로 `식별`할 수 있다는 장점이 있다.

```css
html {
  --background-color: blue;
}

h1 {
  background-color: var(--background-color);
}
h2 {
  background-color: var(--background-color);
}
```

### CSS 변수 선언
CSS 변수를 선언하는 방법은 `대시 기호 2개(--)`로 시작하며 속성의 이름(변수명)과 함께 `콜론(:)` 뒤에 속성값을 지정하면 된다.

```css
html {
  --primary-color: #662409;
}
```

이렇게 선언한 CSS 변수도 `유효 범위`가 존재한다.  
변수를 선언한 요소를 포함하여 그 요소의 모든 후손 요소까지의 범위에서 유효하게 사용이 가능하다.  
예를 들어 header 태그에서 선언한 변수는 footer 태그 안에서 사용할 수 없다.  

### CSS 변수 사용
CSS 변수를 선언했다면 사용하는 방법은 `var()` 함수를 사용하고 매개변수로 `속성의 이름`을 넣으면 된다.

```css
h1 {
  color: var(--primary-color);
}
```

## 사용자 지정 속성 대체
사용자 지정 속성이 정의되지 않은 경우 var() 안에 대체 값을 함께 정의할 수 있다.  

```css
/* --primary-color가 정의되지 않은 경우 blue로 대체된다. */
h1 {
  color: var(--primary-color, blue);
}

/* --primary-color가 정의되지 않은 경우 --font-color의 속성값으로 대체된다. */
h1 {
  color: var(--primary-color, var(--font-color));
}
```
