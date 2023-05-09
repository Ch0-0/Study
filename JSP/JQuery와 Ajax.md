

## JQuery 와 Ajax 의 차이

Ajax와 jQuery는 웹 페이지에서 사용자 친화적이고 효율적이며 매력적인 환경을 제공하기 위해 개발 된 두 가지 웹 프로그래밍 언어입니다.
Ajax와 jQuery의 **주요 차이점은 jQuery는 JavaScript를 사용하여 빌드 된 Frame Work와 비슷하고 Ajax는 웹 페이지를 다시로드하지 않고 
서버와 통신하기 위해 JavaScript를 사용하는 기술 또는 방법이라는 것**입니다. jQuery는 많은 기능에 Ajax를 사용합니다. Ajax와 jQuery는 
함께 사용되며 두 언어가 자주 함께 사용되기 때문에 비교하기가 어렵습니다.

##### 복잡성
jQuery : jQuery는 주로 HTML 요소의 상호 작용을 대상으로하는 경량 언어입니다.
Ajax : Ajax는 단순한 도구이기 때문에 HTML을 사용할 수없는 강력한 도구입니다.

##### 페이지 새로 고침
Ajax : Ajax는로드 된 후 페이지를 다시로드하지 않습니다.
jQuery : jQuery는로드 후 페이지를 다시로드합니다.

##### 기능
jQuery :jQuery는 다른 기술을 결합하여 새로운 기능을 제공 할 수 없습니다.
Ajax : Ajax는 많은 새로운 기능을 제공하는 CSS, JS, HTML 및 DOM과 같은 여러 다른 기술의 조합입니다.

##### 접속하다
jQuery : jQuery는 프런트 엔드를 통해 액세스 할 수 있습니다.
Ajax : Ajax는 서버에서 데이터를 수신하기 위해 적절한 절차 방식으로 주소를 지정해야합니다.

##### 서버 과부하
jQuery : jQuery로 작업 할 때 서버 오버로드 가능성이 없습니다.
Ajax : Ajax를 많이 사용하면 Ajax 호출이 발생할 때마다 연결 수가 증가하여 서버 과부하가 발생하는 경우가 많습니다.

대화 형 웹 인터페이스를 만들 때 jQuery와 AJAX는 가장 일반적으로 사용되는 두 가지 기술입니다. 또한 웹 애플리케이션이 효과적이고 매력적인 방식으로 작동하도록하는 데 도움이됩니다. 
Ajax와 jQuery는 똑같이 중요하며 jQuery와 AJAX는 종종 서로 함께 사용되기 때문에 서로 비교하기가 어렵습니다.


### JQuery 란
jQuery는 멋진 기능을 제공하는 클라이언트 측 표준 스크립팅 라이브러리입니다. 그만큼 jQuery의 주요 목적 웹 사이트에서 자바 스크립트를 쉽게 사용할 수 있도록하는 것입니다. 
jQuery는 메서드의 많은 자바 스크립트 코드를 한 줄의 코드로 단순화합니다. jQuery는 훨씬 복잡한 Ajax 호출 및 DOM을 래핑하고 단순화합니다. jQuery의 기능 중 일부는 AJAX 요청을 수행하기위한 고급 인터페이스를 구현합니다. 
jQuery는 사용자의 동작을 감지하고 그에 따라 웹 페이지의 요소를 수정합니다. jQuery는 프런트 엔드에서 모든 작업을 동적으로 수행합니다.. 따라서 AJAX 호출이 필요할 때마다 jQuery를 사용해야합니다.


### Ajax 란
AJAX는 비동기 JavaScript 및 XML, jQuery로 XMLHttpRequests를 수행하는 데 사용되는 기술입니다. 다양한 브라우저에서 다양한 기술을 사용하여 XMLHttpRequest를 생성하기 위해 자바 스크립트를 사용합니다. 
AJAX는 웹 페이지를 새로 고치지 않고 브라우저와 서버간에 데이터와 정보를 전송하는 방법입니다. AJAX로 작업 할 때 모든 단일 단계는 AJAX 호출을 수행하는 데 프로그래밍되어야합니다. 
AJAX는 매우 강력한 도구이지만 간단한 HTML로는 사용할 수 없습니다.
AJAX를 사용하려면 스크립팅 언어가 필요합니다. AJAX 호출이 이루어질 때마다 서버에 대한 새로운 연결이 이루어집니다. 따라서 AJAX 함수를 많이 사용하면 종종 서버 과부하가 발생합니다.


[출처: https://ko.strephonsays.com/ajax-and-vs-jquery-11297]



### Ajax 문법
#### 1. 기본적인 문법
<details>
  <summary>펼치기/접기</summary>
  ```
//다른 파일을 현재 파일에 구동하는 방식 jQuery
//여기선 dictionary를 구현 
$(document).ready(function() {
  $('#load').click(function() {
    $('#dictionary').load("load.html");
    return false;
  });
});
//jQuery와 AJAX 사용 
/*약식*/
//get함수
$.get ( URL , DATA , CALLBACK);
//post함수
$.post ( URL , DATA , CALLBACK);
/*전체*/ 
$(webDocument).ready(function(){
    $('#데이터 요청한 선택자').Event(function(){
        $.ajax({
            url:'요청.URL',
            type:'요청 Method',
            dataType:'요청 dataType',
            success: function(서버로 부터 응답 받은 data){ //콜백 함수
                $('#데이터 넣을 선택자').empty(); //비워주기
                $.each($(서버로 부터 응답 받은 data).find('entry'), function(){
                var $entry=$(this);
                var html ='<div class="entry">';
                    html +='<h3 class="term">'+ $entry.attr('term'); +'</h3>';
                    html +='<div class="part">'+ $entry.attr('part'); +'</div>';
                    html +='<div class="definition">'+  $entry.text()+'</div>';
                    html +='</div>';
                    $('#데이터 넣을 선택자').append(html);
                }); //end each
            }//end
        });//end ajax
        return false;
    });
});
//getJSON 구현
//약식
$.getJSON( URL , DATA , CALLBACK);
/*

*설명:*
첫번째 매개 변수 URL로는 요청을 보낼 URL주소를 입력하게되며, 
두번째 매개 변수 DATA로는 클라이언트의 요청을 통해 서버로 부터 받은 DATA를  
세번째 매개변수로는 통신 성공시 구현하게될 콜백 함수를 정의해 주게 된다.

콜백 함수란 그럼 무엇인가?
-callback()는 클라이언트가 서버에 동작을 요청하고 클라이언트가 그 결과를 받을 때 호출되는 함수! 
-즉 다시 말하자면 AJAX 요청이 완료된 후에 호출될 함수의 이름을 지정하는 것

*/
//dictionary.js 구현
$(document).ready(function() {
    $('#json').click(function() {
        $.getJSON('json.json',function(data){ 
            $('#dictionary').empty();
            $.each(data,function(index,entry){
                var html ='<div class="entry">';
                html +='<h3 class="term">'+entry.term +'</h3>';
                html +='<div class="part">'+entry.part +'</div>';
                html +='<div class="definition">'+ entry.definition+'</div>';
                html +='</div>';
                $('#dictionary').append(html);
            });// end each
        });// end json
        return false;
    });// end click
});
//JAVASCRIPT 방식
test.html
<span id="selectorForOutput"></span></p>
<input type="button"/>
<script>
document.querySelector('데이터 입력 선택자').addEventListener('event').function(event){
    var xhr=new XMLHttpRequest();
    xhr.open('방식(GET/POST)','요청 URL');
    xhr.onreadystatechange=function(){
    //통신 완료 && 통신 성공 
        if(xhr.readyState===4 && xhr.status===200){
            document.querySelector('데이터 출력 선택자').innerHTML=xhr.responseText;
        }
    }
    xhr.send();
});
</script>
//참고 http://www.nextree.co.kr/p11205/
  ```
  
  </details>

