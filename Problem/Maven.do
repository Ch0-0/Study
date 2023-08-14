# Maven 실행 오류

  *Last Updated 2023.08.14*


## 목차

- [Gradle To Maven](#Gradle-To-Maven)



  ---


## Gradle To Maven

  *필자의 경우 프로젝트를 import 받았고 pom.xml_back 이있는상태였다* 

  pom.xml_back 을 pom.xml로 변경하였으나 대부분의 곳에서 cannot be resolved 에러가 발생 <br>

  Maven -> Update Project 이후 Run As -> Maven Claen / Maven install (install은 한번에 안되었다 다시 누르니 됐다) <br>
  Project -> Clean 
  이 전체 과정을 반복해서 진행중이였는데 Build Path -> Configure Build Path... 에서 모이지 않던 Maven Dependencies 가 생성 <br>

  * import 하지못했던 에러메시지들도 이제보니 Maven Dependencies에서 가져오는 것들이였다* 

  pom.xml 혹은 Maven -> Add Dependency 로 필요한 jar의 버전을 가져올 수 있다. <br>

  <b>결론: 프로젝트를 import 후에 Configure Build Path 에서 JRE System Library 를 수정해도 적용되지 않는다면, Maven Dependencies가 있는지 확인해보자. </b>
