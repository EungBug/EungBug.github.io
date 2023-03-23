---
published: true
title:   "TIL-05 : 스타벅스 클론코딩 Header 영역"
excerpt: "Today I Learned!"

categories:
    - Study
tags:
    - [HTML]

toc: true
toc_label: "목차"
toc_icon: "bars"
toc_sticky: true

comments: true

date: 2023-03-24
last_modified_at: 2023-03-24
---

스타벅스 클론코딩 강의를 수강하며 배운 내용들을 정리해본다.

## 오픈 그래프(Open Graph Protocol)

오픈 그래프 프로토콜은 HTML 문서에서 meta 정보들을 미리보기를 통해 쉽게 표시하여 보여주는 프로토콜이다.  
웹 페이지를 SNS 등에 공유할 때 웹사이트의 제목, 종류, 대표 URL, 대표 이미지 등의 정보들을 보여준다.

오픈 그래프에 지정할 수 있는 대표적인 속성들은 아래와 같다.

| 속성 | 설명 |
| -- | -- |
| og:type | 웹 사이트의 유형 |
| og:title | 웹 사이트의 제목 |
| og:description | 웹 사이트의 간단한 설명 |
| og:image | 웹 사이트의 대표 이미지 주소 |
| og:url | 웹 사이트의 대표 URL |

```html
<meta property="og:type" content="website" />
<meta property="og:site_name" content="몬스터 죽이기 게임" />
<meta property="og:title" content="몬스터 죽이기 게임" />
<meta property="og:description" content="🎮몬스터와 싸워서 전투에서 이겨보세요!🎮" />
<meta property="og:image" content="./images/site_image.png" />
<meta property="og:url" content="URL" />
```

## 트위터 카드

## google fonts

## google material icons

## favicon

### favicon이 적용되지 않는다?


