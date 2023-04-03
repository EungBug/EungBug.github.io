---
published: true
title:   "TIL-08 : JavaScript 이벤트 버블링"
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

date: 2023-03-31
last_modified_at: 2023-03-31
---
<br>

# 이벤트 버블링(Event Bubbling)

이벤트 버블링이란 요소에 이벤트 핸들러를 등록하여 이벤트가 발생했을 때 핸들러가 실행되는데, 해당 요소를 포함하고 있는 부모 요소 및 `상위 요소의 이벤트 핸들러까지 반복되면서 동작되는 현상`을 말한다.

```html
<div class="container">
  <div class="parent">
    <div class="child">
    </div>
  </div>
</div>
```
```javascript
const container = document.querySelector('.container');
const parent = document.querySelector('.parent');
const child = document.querySelector('.child');

container.addEventListener('click', function() {
  console.log("click container");
});

parent.addEventListener('click', function() {
  console.log("click parent");
});

child.addEventListener('click', function() {
  console.log("click child");
});
```

위와 같은 구조에서 각각의 div에 이벤트가 발생하면 출력하는 핸들러를 등록한다.  
그리고 나서 child를 클릭 하면 아래와 같이 3개의 div에 등록한 핸들러가 순차적으로 모두 동작하게 된다.

```
click child
click parent
click container
```

<br>

# stopPropagation()

원하는 요소에만 이벤트를 발생하고 싶은데 버블링으로 상위 요소까지 올라가는 것을 막기 위해서  
`event.stopPropagation()` 메서드를 사용하면 이벤트가 발생한 요소의 핸들러만 실행하고 `상위 요소로 이벤트가 전파되는 것을 막아준다.`

```javascript
child.addEventListener('click', function (event) {
  event.stopPropagation();
  console.log("click child");
})
```

event.stopPropagation()을 추가한 뒤 child div를 클릭 시 전과는 다르게 `click child`만 출력되는 것을 볼 수 있다.