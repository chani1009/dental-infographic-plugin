# dental-infographic

워드 문서(.docx)를 800×800px 카드뉴스 스타일 HTML/PNG 인포그래픽으로 변환하는 Claude Code 플러그인입니다.

치과·의료 문서를 시각적으로 아름다운 카드 이미지로 제작할 때 사용하세요.

## 설치 방법

```
/plugin marketplace add chani1009/dental-infographic-plugin
/plugin install dental-infographic@dental-infographic
```

## 사용 방법

Claude Code에서 다음과 같이 말하면 자동으로 스킬이 활성화됩니다:

- "이 워드 파일 인포그래픽으로 만들어줘"
- "카드뉴스로 만들어줘"
- "환자 설명 자료 시각화해줘"
- "docx 인포그래픽"

## 스킬 기능

- `.docx` 파일을 읽어 내용 분석
- 3~5장 기획안 제시 후 사용자 확인
- 800×800px HTML 카드 생성 (타이틀/타임라인/그리드/통계/엔딩 레이아웃)
- Playwright로 HTML → 1600×1600px PNG 변환 (2배 해상도)
