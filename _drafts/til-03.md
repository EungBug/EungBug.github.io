---
published: true
title:   "TIL-03 : CSS"
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

date: 2023-03-22
last_modified_at: 2023-03-22
---

## background

### background-color
요소의 `배경 색상`을 지정하는 속성이다. 속성값으로 색상값을 입력해야 한다.  
배경 색상의 기본값은 `transparent` 투명함이다.  

`background-color: 색상값;`

```css
div {
  background-color: red;
}
```

### background-image
요소의 배경에 `이미지`를 넣는 속성이다. 속성값은 삽입할 이미지의 경로를 `url()` 함수로 지정해야 한다.  

`background-image: url();`

background-image 속성을 사용할 때는 **요소의 배경 크기가 반드시 있어야 한다.**
(width와 height 속성을 같이 사용해야 한다.)  
배경 색상과 함께 사용 시 배경 색상은 이미지 뒤에 들어가게 된다.

```css
div {
  background-image: url("이미지 경로");
}
```

### background-repeat
요소의 배경 `이미지가 반복되는 설정`을 지정하는 속성이다.  
요소의 크기가 이미지의 크기보다 큰 경우 자동으로 이미지가 반복해서 크기를 채우게 된다. 

`background-repeat: 속성값`

- `repeat`(기본값) : 이미지를 수직, 수평 반복
- repeat-x : 이미지를 수평 반복
- repeat-y : 이미지를 수직 반복
- `no-repeat` : 이미지를 반복하지 않음

```css
div {
  background-repeat: no-repeat;
}
```

### background-position
요소의 배경 이미지의 위치를 지정하는 속성이다.  
속성값을 1개만 입력 시 x축 값으로 인식되고 y축은 자동으로 center가 된다.  

`background-position: x위치, y위치;`

background-position 속성 값

| 위치 | 속성값 | 설명 |
| -- | -- | -- |
| x | left, center, right | x축 방향의 위치를 지정한다. |
| y | top, center, bottom | y축 방향의 위치를 지정한다. |
| 공통 | px, em, rem, % 등 단위 | 위치를 직접 지정한다. |

```css
div {
  background-position: top, right; /* 이미지가 우상단에 위치 */
  background-position: center; /* 이미지가 정가운데 위치 */
  background-position: 100px 30px; /* 왼쪽에서 100px 위에서 30px 지점에 이미지 위치 */
}
```

### background-size
요소의 배경에 삽입될 이미지의 크기를 지정하는 속성이다.  

`background-size:속성값;`

- `auto`(기본) : 이미지의 실제 크기
- `cover` : 이미지의 가로 세로 비율을 유지하면서 크기를 확대하거나 축소해 요소의 배경을 채움(요소의 더 넓은 너비에 맞춤)
- contain : 이미지의 가로 세로 비율을 유지하면서 이미지가 배경 요소 안에 들어가도록 크기를 확대하거나 축소함(요소의 더 짧은 너비에 맞춤)
- 단위 : 너비 높이를 직접 입력

### background-attachment
요소의 배경에 삽입된 이미지를 스크롤 특성을 지정하는 속성이다.

`background-attachment: 속성값;`

- `scroll`(기본) : 이미지가 요소를 따라서 같이 스크롤 됨
- `fixed` : 이미지가 뷰포트에 고정되고 스크롤 되지 않음
- local : 요소 내 스크롤 시 이미지가 같이 스크롤 됨

```css
div {
  background-attachment: fixed;
}
```

### backgroudn 속성 한 번에 지정
background 속성은 속성값을 나열하여 한 번에 지정할 수 있다. 나열하는 순서는 정해져 있지 않지만 background-size 속성은 항상 background-position 속성을 먼저 입력하고 `슬래시(/)`로 구분한 후 사용한다.

`background: <color 속성값> <image 속성값> <repeat 속성값> <position 속성값/size 속성값> <attachment 속성값>
`

```css
div {
  backgroud: red url("경로") no-repeat top center/cover fixed;
}
```

- 한 번에 지정하는 것은 가독성에 좋지 않기 때문에 각 속성을 하나씩 작성하는 것이 더 좋다.

## position

