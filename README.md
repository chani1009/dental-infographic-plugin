# dental-infographic-plugin

워드 문서(.docx)를 800×800px 카드뉴스 스타일 HTML/PNG 인포그래픽으로 변환하는 AI 에이전트 스킬 플러그인.

## 설치 방법

### Claude Code
```
/plugin marketplace add chani1009/dental-infographic-plugin
/plugin install dental-infographic@dental-infographic
```

### Cursor
`.cursor-plugin/plugin.json`이 자동으로 인식됩니다.
저장소를 Cursor 플러그인 경로에 클론하세요.

### OpenAI Codex
```bash
curl -o AGENTS.md https://raw.githubusercontent.com/chani1009/dental-infographic-plugin/main/AGENTS.md
```
또는 `.codex/INSTALL.md` 참고.

### OpenCode
`.opencode/INSTALL.md` 참고.

### Gemini
`AGENTS.md`를 프로젝트에 추가하면 자동으로 인식됩니다.

---

## 스킬 목록

| 스킬 | 설명 |
|------|------|
| `dental-infographic` | docx → 800×800px 카드뉴스 PNG 변환 |

> 새 스킬은 `skills/` 폴더에 추가하면 자동으로 등록됩니다.

---

## 새 스킬 추가하기

```bash
mkdir -p skills/<skill-name>
# skills/<skill-name>/SKILL.md 작성 후:
git add skills/<skill-name>/
git commit -m "Add <skill-name> skill"
git push
```

`plugin.json` 수정 없이 `skills/` 폴더에 넣기만 하면 됩니다.

---

## 사용 예시

"이 워드 파일 인포그래픽으로 만들어줘", "카드뉴스로 만들어줘", "환자 설명 자료 시각화해줘"라고 하면 자동으로 스킬이 활성화됩니다.
