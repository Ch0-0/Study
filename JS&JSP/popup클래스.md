### JSP

```JSP
<div id="popupAll" style="display: none;">
  <div id="popupSwitch" class="popup on">
    <div class="pop-cont">
      <h3>팝업입니다</h3>
      <div class="pop-contbox">
        <div class="cont-scroll">
          <div class="subscribe-popsubtit">블라블라</div>
          <!--                -popheadline
                              -poptit
                              -popcont
          -->
        </div>
      </div>
      <a href="#" onClick="자바close 펑션" class="close">close</a>
                      
```
      
      
### JS
      
      ```JSP
      오픈펑션(){
      var popupOpen = document.getElementByID("팝업을 띄울 버튼 등등의 ID");
      popupOpen.style.display = "block";
      
      var popUp = document.getElementById("popopSwitch");
      if(popUp.className=='popup'){
      popUp.classList.add("on");  <!-- close 누르면 popup on -> popup 으로 바뀌기 때문.-->
      }
      
      }
      ```
