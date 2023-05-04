#### 2023-05-04


자바스크립트로 main.js 화면 수정


#### 요청사항: 중간에 있던 띠배너를 최상단위치에 추가

행동: 띠배너를 그대로 복사후 최상단에 넣었다.

문제발생: 띠배너 초기화가 중복으로 사용되니 정상적으로 작동되지 않아, 슬라이드 해서 넘겨도 밑에 작은 동그라미(몇번째인지 표시해주는)가 정상적으로 따라오지 못했다.
해결: 띠배너 초기화 부분도 C&P

문제발생2: 기존에 있던 문제인데, 띠배너를 슬라이드 하다보니 멈추는 현상
해결: autoplay 하위에 disableOnInteraction: false //터치 후 멈출것인지   를 추가함



개선사항: Script 를 조합하는 과정에서 기존에는 " 를 넣기위해 \" 가 사용되었는데 가독성을 개선하기 위해 ` 로 바꿈 (' 아님 주의!)



### Swiper 기능
```
function init_banner(){
var swiper_top_banner = new Swiper('.slide-top-banner-test', {
autoHeight: true, //슬라이드 내용의 높이에 맞게 슬라이드의 높이를 자동으로 조정합니다.
slidesPerView: 1, //한 번에 표시되는 슬라이드의 수를 지정합니다.
spaceBetween:0, //슬라이드 사이의 간격을 지정합니다.
pagination: true, //페이징 컨트롤을 사용하여 슬라이드를 제어합니다.
slideShadows: true, //슬라이드에 그림자 효과를 추가합니다.
clickable: true, //슬라이드를 클릭하여 다음 슬라이드로 이동할 수 있도록 합니다.
loop: true, //슬라이드가 끝에 도달하면 다시 처음으로 돌아가는 무한 루프를 사용합니다.
pagination: {
  el: '.swiper-pagination',
  clickable: true,
},
autoplay: { //자동으로 슬라이드를 재생합니다.
  delay: 3000,
  disableOnInteraction: false, //슬라이드 수동 동작 후 멈춤의 여부
},
});
}
```
