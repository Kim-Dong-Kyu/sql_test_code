--특정문자 치환
replace(A.NM, 'Steven', 'S.')
--특정문자 제거

replace(A.NM, 'King', '')

--엔터값 제거

replace(replace(A.NM, chr(13), ''), chr(10), '')
--탭문자 제거

replace(A.NM, chr(9), '')
--<br/>태그 엔터값으로 치환

replace(A.NM, '<br/>', chr(13)||chr(10))

--전환번호 구분자 제거
replace(A.TELNO, '-', '')