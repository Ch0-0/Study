### 스프링부트에서 Moment.js사용하기

JSP에는 moment.js가 설치된 경로를 스크립트에 설정한다.
필자의 경우 mement.min.js이며 경로는 현재파일경로에서 /js/src/moment.min.js 로 설정했다.

이후 JS에서 var now = moment();
console.log("year: " + now.year());
var adddate = moment().add(1, "days");
var addmonth = moment().add(1, "months");
console.log("더해진 날짜" + adddate.format("YYYY-MM-DD"));

console.log("더해진 날짜" + adddate.format("YYYYMMDD"));

이렇게 출력해 보았다.

사용방법에 대해서는 https://velog.io/@dojunggeun/JavaScript-Moment.js%EB%A5%BC-%EC%9D%B4%EC%9A%A9%ED%95%98%EC%97%AC-Date-Time-%EA%B4%80%EB%A6%AC%ED%95%98%EA%B8%B0 
잘 정리되어 있어서 참고하였다.
