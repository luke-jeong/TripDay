# TripDay
TripDay project


## 프로젝트 계획 이유
> 국내의 여행지를 소개하고 해당 지역의 날씨를 반영해 여행스케줄을 계획하는데 도움을 주는 서비스의 필요성을 느껴 기획하게 되었습니다.
> 이 프로젝트를 통해 사용자들에게 안내된 정보를 바탕으로 알려지지않은 여행지를 소개함에 따라 해당지역 경제활성화에 기여하는 효과를 기대하고 있습니다.

----------------------------
## 기획 일정
![기획일정](https://user-images.githubusercontent.com/87305963/125576509-82f2f4ac-779a-4f82-9b06-a902710c7fe6.JPG)


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
유저가 저장한 즐겨찾기 정보를 담고있는 **PREFER**  

BOARD에서는 USER의 id를 foreign key로 가져오고,  
REPLY에서는 USER의 id와 BOARD의 id를 foreign key로 가져옵니다. 
PREFER에서 USER의 id를 foreign key로 가져옵니다.  

![er diagram](https://user-images.githubusercontent.com/87305963/125576492-6fa13206-aa5e-4172-a41e-f7a64d2c47bd.JPG)


-------------------------
## 페이지 소개
------------------------
> ## 메인화면  

메인화면입니다.
  - 여행지 리스트
  - 로그인
  - 구글 로그인
  - 리뷰 게시판
  - 깃헙 링크  

로 구성되어있습니다.  
![image](https://user-images.githubusercontent.com/87305963/125579471-c2c93903-fb5c-4c07-a178-7c697b989e61.png)

-------
>> 로그인 버튼  
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
      
>> 구글로그인 버튼  
**Google 로그인의 경우 Oauth를 이용해 연동했습니다.**  
**로그인 후에는 다시 index 페이지로 돌아가게 되며, 로그인 버튼이 보이지 않게 됩니다.**  
![image](https://user-images.githubusercontent.com/87305963/125581014-5226c2f5-c58e-410d-8918-420e2180c520.png)

------------------------------------
> ## 여행지 리스트
처음 들어가게되면 국내 모든 여행지가 인기순으로 정렬되어 나타납니다.  
![image](https://user-images.githubusercontent.com/87305963/125581559-0e5f52f2-3ec9-438d-8cc0-84b7b6642998.png)

날짜와 지역을 선택하면 해당하는 지역의 날씨가 여행지 정보 밑에 출력됩니다.  
![image](https://user-images.githubusercontent.com/87305963/125581574-9a2d2466-a9a1-4a55-b5f7-a7e2680040d5.png)

----------
>> 날씨와 여행지 정보는 api를 받아와서 출력했습니다.  
>> 날씨 api  
 
ajax를 이용해서 기상청으로부터 데이터를 받아왔습니다.

        $.ajax({
				
				url : 'search_date',
				type : 'post',
				dataType : 'json',
				data : JSON.stringify({areacode : result[i].areacode, s_date : s_date}),
				contentType:'application/json',
				error : function(xhr, status, msg) {
					alert("상태값 :" + status + " Http에러메시지 :" + msg);
				},
				success : function(response) {
					list.push(response);
					if(cnt == result.length-1){
					weatherListResult(list);
					}
					cnt = cnt +1;
				}

날씨는 유가 선택한 날짜를 현재 날짜와 비교하여 단기 예보와 장기 예보로 나누어야했는데,  
이는 controller에서 period를 이용해 날짜 차이를 계산해 if 문으로 구분했습니다.

    LocalDate s_date_local = LocalDate.parse(map.get("s_date"), DateTimeFormatter.ISO_DATE);
		LocalDate today = LocalDate.now();
		
		Period period = Period.between(today, s_date_local);
    
    

>> 여행지 api

여행지 api도 날씨와 마찬가지로 ajax를 통해서 데이터를 받아왔습니다.

	$.ajax({
					url : 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?serviceKey=jiMuTvx6cLYWRrR2EKwGefsF3O966xEpgeU0UcEsuAtfzmtXVsG8pHw3JYK4uSUv6kgWiHX77rZDdjMnNaWRXQ%3D%3D'
							+ '&pageNo='+pageNo
							+ '&numOfRows='+numOfPage
							+ '&MobileApp=test'
							+ '&MobileOS=ETC'
							+ '&arrange='+arrange
							+ '&contentTypeId=12'
							+ '&areaCode='+areacode
							+ '&sigunguCode='+sigunguCode
							+ '&listYN=Y'
							+ '&_type=json',
					type : 'GET',
					dataType : 'json',
					error : function(xhr, status, msg) {
						alert("상태값 :" + status + " Http에러메시지 :" + msg);
					},
					success : function(response) {
						response = response.response.body.items.item;
						tripListResult(response);
						weather(response);
					}
				});
				

>> 여행지 상세페이지  

여행지를 선택하면 상세페이지에 접속하게 됩니다.  
상세페이지에서는 여행지의 사진과 상세내용, 사용자가 선택한 날짜의 날씨정보, 해당 여행지의 지도를 확인할 수 있습니다.  
**즐겨찾기** 버튼을 누르면 유저가 해당 여행지와 함께 유저가 선택한 날짜가 PREFER 테이블에 저장됩니다.  

**
