## STS와 Git의 연결방법에 대해서

필자의 경우 vscode를 통해 이미 깃랩으로 부터 소스를 다운(clone) 받은 상태였다
하지만 소스수정 및 tomcat으로 서버실행은 STS에서 진행해야 하기때문에 STS에서 다시 다운받았던 레파지토리를 잡아서
import 프로젝트 했지만 실행이 되지 않았다.

이유는 maven으로 된 프로젝트였기 때문이다.
파일 - import - maven -> Existing maven Projects 를 선택하여 추가하고 (이름이 동일하면 pom.xml을 수정)
Run As - Maven Build를 선택한다. 
Goals 는 package 라고 입력하고 실행한다.

