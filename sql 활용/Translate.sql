
-- 인수로 들어온 문자여렝서  두번째 인수 문자열을 찾아 3번째 인수 문자열로 변환한다

SELECT TRANSLATE('hello world!!!', 'hw', 'HW')
  FROM dual



--결과 : Hello World!!!

;



SELECT TRANSLATE('hello world!!!', '!', '?')
  FROM dual



--결과 : hello world???

;



SELECT TRANSLATE('hello world!!!', 'hw!', 'HW')
  FROM dual



--결과 : Hello World

;



SELECT TRANSLATE('hello world!!!', 'o', ' ')
  FROM dual



--결과 : hell  w rld!!!