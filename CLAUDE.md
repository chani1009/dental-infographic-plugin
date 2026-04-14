# Contributing to dental-infographic-plugin

## 새 스킬 추가하기

1. `skills/` 폴더 아래 새 디렉토리 생성
2. `SKILL.md` 파일 작성 (frontmatter 필수)
3. 커밋 후 push

```bash
mkdir -p skills/<skill-name>
# SKILL.md 작성 후:
git add skills/<skill-name>/
git commit -m "Add <skill-name> skill"
git push
```

## SKILL.md 형식

```markdown
---
name: skill-name
description: >
  한 줄 설명. 언제 이 스킬을 사용해야 하는지 트리거 키워드 포함.
metadata:
  version: 1.0.0
---

# 스킬 제목

## 개요
...
```

## 주의사항

- `description`은 AI가 스킬을 자동으로 선택하는 기준이 됩니다. 트리거 키워드를 충분히 넣으세요.
- `skills/` 폴더에 추가하면 `plugin.json` 수정 없이 자동으로 인식됩니다.
