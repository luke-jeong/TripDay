# TripDay
TripDay project


## 프로젝트 계획 이유
> 국내의 여행지를 소개하고 해당 지역의 날씨를 반영해 여행스케줄을 계획하는데 도움을 주는 서비스의 필요성을 느껴 기획하게 되었습니다.
> 이 프로젝트를 통해 사용자들에게 안내된 정보를 바탕으로 알려지지않은 여행지를 소개함에 따라 해당지역 경제활성화에 기여하는 효과를 기대하고 있습니다.

----------------------------
## 기획 일정
![기획일정](https://github.com/GagaKor/teamProject-TripDay-API/blob/master/%EA%B7%B8%EB%A6%BC1.jpg)


--------------------------
## 개발환경
||종류|
|------|--------|
|Tools| STS, DBeaver|
|Front| jsp, css, js, jquery|
|etc| jpa, Maven, spring security, api|

---------------------------
## ER Diagram
DB Table은 4가지로 구성되어있습니다.  
회원 정보를 담고있는 **USER**  
게시판 정보를 담고있는 **BOARD**   
게시판의 댓글정보를 담고있는 **REPLY**  
사용자가 저장한 즐겨찾기 정보를 담고있는 **PREFER**  

BOARD에서는 USER의 id를 foreign key로 가져오고,  
REPLY에서는 USER의 id와 BOARD의 id를 foreign key로 가져옵니다. 
PREFER에서 USER의 id를 foreign key로 가져옵니다.  

![er diagram](https://user-images.githubusercontent.com/87305963/125576492-6fa13206-aa5e-4172-a41e-f7a64d2c47bd.JPG)


------------------------
##index.jsp
-메인화면입니다.
  -여행지 리스트
  -로그인
  -구글 로그인
  -리뷰 게시판
  -깃헙 링크
로 구성되어있습니다.
![image](https://user-images.githubusercontent.com/87305963/125579471-c2c93903-fb5c-4c07-a178-7c697b989e61.png)


spring security를 사용하기 위해 pom.xml에 dependency를 추가하고
  
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-security</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.security</groupId>
        <artifactId>spring-security-taglibs</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.security</groupId>
        <artifactId>spring-security-test</artifactId>
        <scope>test</scope>
    </dependency>

index.jsp에 taglib를 추가했습니다.

      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
      <sec:authorize access="isAuthenticated()">
      <sec:authentication property="principal" var="principal"/>
      
Google 로그인의 경우 Oauth를 이용해 연동했습니다.

------------------------------------

