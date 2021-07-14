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
db table은 4가지로 구성되어있습니다.  
회원 정보를 담고있는 USER  
게시판 정보를 담고있는 BOARD  
게시판의 댓글정보를 담고있는 REPLY  
사용자가 저장한 즐겨찾기 정보를 담고있는 PREFER  

BOARD에서는 USER의 id를 foreign key로 가져오고,  
REPLY에서는 USER의 id와 BOARD의 id를 foreign key로 가져옵니다. 
PREFER에서 USER의 id를 foreign key로 가져옵니다.  

![er diagram](https://user-images.githubusercontent.com/87305963/125576492-6fa13206-aa5e-4172-a41e-f7a64d2c47bd.JPG)


------------------------
##
