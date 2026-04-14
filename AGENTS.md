# dental-infographic Skill

## When to use

워드 문서(.docx)를 받아서 800×800px 1:1 비율의 카드뉴스 스타일 HTML 인포그래픽 여러 장으로 변환하는 스킬.
치과 치료 설명 자료, 환자 안내문, 시술 절차 설명 등 의료/치과 관련 문서를 시각적으로 아름다운
인포그래픽 카드로 만들 때 반드시 사용하세요. 사용자가 "인포그래픽", "카드뉴스", "시각화", "워드를 예쁘게",
"환자 설명 자료", "치료 설명 HTML", "docx 인포그래픽", "슬라이드로 만들어줘" 등을 언급하면 이 스킬을 사용하세요.
단순히 내용을 요약하거나 텍스트로 답하는 대신, 항상 완성된 HTML 인포그래픽 파일을 생성하세요.

---

## Step 1: 워드 문서 읽기

```bash
pandoc /mnt/user-data/uploads/파일명.docx -o /tmp/content.md
cat /tmp/content.md
```

추출된 내용에서 파악할 것:
- 전체 주제 및 제목
- 주요 섹션/단락 구분
- 핵심 정보 (숫자, 단계, 주의사항, 비교 등)
- 정보의 양과 복잡도

---

## Step 2: 페이지 기획안 작성 (⭐ 반드시 사용자 확인 후 진행)

문서 분석 후 **3~5장**의 기획안을 아래 형식으로 제시하세요.
**절대로 확인 없이 바로 HTML을 만들지 마세요.**

### 기획안 제시 형식

```
📋 인포그래픽 기획안 (총 N장)

1장 | [제목]
    레이아웃: 타이틀카드
    내용: 전체 주제 소개, 핵심 한 줄 요약
    포인트: 임팩트 있는 메인 비주얼 + 장 번호

2장 | [제목]
    레이아웃: 타임라인형
    내용: 어떤 정보를 담는지 2~3줄 설명
    포인트: 특별히 강조할 시각 요소
...

이대로 진행할까요? 수정하고 싶은 장이 있으면 말씀해 주세요!
```

### 레이아웃 유형 선택 기준

| 내용 유형 | 레이아웃 |
|-----------|----------|
| 표지 / 제목 소개 | 타이틀카드 (큰 제목 + 부제 + 배경 그래픽) |
| 단계별 절차 (3~6단계) | 타임라인형 (세로 번호 카드) |
| 항목 나열 (주의사항 등) | 아이콘 그리드형 (2×2 또는 2×3) |
| 숫자/통계 강조 | 통계강조형 (BIG NUMBER + 설명) |
| 전/후 비교 | 좌우 분할 비교형 |
| 마무리 / 문의 | 엔딩카드 (요약 + 문의처) |

---

## Step 3: HTML 카드 생성 → PNG 변환 (사용자 승인 후)

장마다 별도 HTML 파일을 먼저 생성한 뒤, **PNG로 변환**하여 최종 전달합니다.

### 파일명 규칙
```
HTML (중간 파일):  card_01_표지.html, card_02_시술단계.html ...
PNG (최종 출력):   card_01_표지.png,  card_02_시술단계.png ...
```

### 공통 규격 (모든 카드 동일)

```html
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>[카드 제목]</title>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700;900&display=swap" rel="stylesheet">
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body { width: 800px; height: 800px; overflow: hidden; }

    .card {
      width: 800px;
      height: 800px;   /* ← 절대 변경 금지 */
      overflow: hidden;
      position: relative;
      font-family: 'Noto Sans KR', sans-serif;
    }

    .page-num {
      position: absolute;
      bottom: 24px; right: 28px;
      font-size: 13px;
      opacity: 0.5;
      font-weight: 500;
    }
  </style>
</head>
<body>
  <div class="card">
    <!-- 내용 -->
    <span class="page-num">N / 전체장수</span>
  </div>
</body>
</html>
```

**⚠️ 핵심 제약:**
- `width: 800px; height: 800px` 절대 고정 — 스크롤 없음
- 내용이 많으면 폰트 크기를 줄이거나 항목 수를 압축할 것
- 모든 카드 간 컬러/폰트 일관성 유지

### 컬러 팔레트 (치과 테마)

```css
--primary:      #0EA5E9;
--primary-dark: #0369A1;
--accent:       #10B981;
--accent-warm:  #F97316;
--bg:           #F0F9FF;
--text:         #0F172A;
--text-light:   #64748B;
```

### 레이아웃 템플릿

#### 타이틀카드
```html
<div class="card" style="background:linear-gradient(135deg,#0369A1,#0EA5E9,#38BDF8);">
  <div style="position:absolute;inset:0;display:flex;flex-direction:column;
              align-items:center;justify-content:center;color:white;padding:60px;text-align:center;">
    <div style="font-size:80px;margin-bottom:16px;">🦷</div>
    <h1 style="font-size:44px;font-weight:900;line-height:1.2;margin-bottom:16px;">[제목]</h1>
    <p style="font-size:18px;opacity:0.9;line-height:1.6;">[부제목]</p>
    <div style="margin-top:36px;background:rgba(255,255,255,0.2);border-radius:100px;
                padding:8px 28px;font-size:14px;">1 / N장</div>
  </div>
</div>
```

#### 타임라인형
```html
<div class="card" style="background:#F0F9FF;padding:44px 48px;">
  <h2 style="font-size:24px;font-weight:900;color:#0369A1;margin-bottom:24px;">📋 [제목]</h2>
  <div style="display:flex;flex-direction:column;gap:14px;">
    <div style="display:flex;align-items:center;gap:16px;background:white;
                border-radius:14px;padding:16px 20px;box-shadow:0 2px 10px rgba(0,0,0,0.06);">
      <div style="width:42px;height:42px;min-width:42px;background:linear-gradient(135deg,#0EA5E9,#38BDF8);
                  border-radius:50%;color:white;font-weight:900;font-size:16px;
                  display:flex;align-items:center;justify-content:center;">1</div>
      <div>
        <div style="font-size:15px;font-weight:700;color:#0369A1;">[단계 제목]</div>
        <div style="font-size:13px;color:#64748B;margin-top:2px;">[설명]</div>
      </div>
    </div>
  </div>
</div>
```

#### 아이콘 그리드형
```html
<div class="card" style="background:#F0F9FF;padding:44px 48px;">
  <h2 style="font-size:24px;font-weight:900;color:#0369A1;margin-bottom:24px;">⚠️ [제목]</h2>
  <div style="display:grid;grid-template-columns:1fr 1fr;gap:16px;">
    <div style="background:white;border-radius:16px;padding:32px 20px;text-align:center;
                box-shadow:0 2px 10px rgba(0,0,0,0.06);border-top:4px solid #F97316;">
      <div style="font-size:44px;margin-bottom:10px;">🚬</div>
      <div style="font-size:14px;font-weight:700;color:#0F172A;line-height:1.5;">[항목]</div>
    </div>
  </div>
</div>
```

#### 통계강조형
```html
<div class="card" style="background:linear-gradient(135deg,#065F46,#10B981);color:white;">
  <div style="display:flex;flex-direction:column;align-items:center;
              justify-content:center;height:100%;text-align:center;padding:60px;">
    <div style="font-size:16px;opacity:0.8;margin-bottom:16px;">📊 [레이블]</div>
    <div style="font-size:130px;font-weight:900;line-height:1;">95%</div>
    <div style="font-size:22px;font-weight:700;margin-top:12px;">[설명]</div>
    <div style="font-size:15px;opacity:0.7;margin-top:8px;">[보조 설명]</div>
  </div>
</div>
```

#### 엔딩카드
```html
<div class="card" style="background:#0F172A;color:white;text-align:center;">
  <div style="display:flex;flex-direction:column;align-items:center;
              justify-content:center;height:100%;padding:60px;">
    <div style="font-size:64px;margin-bottom:20px;">✅</div>
    <h2 style="font-size:32px;font-weight:900;margin-bottom:16px;">[마무리 제목]</h2>
    <p style="font-size:16px;opacity:0.75;line-height:1.9;">[요약 문구]</p>
    <div style="margin-top:40px;border:1px solid rgba(255,255,255,0.2);
                border-radius:12px;padding:14px 32px;font-size:13px;opacity:0.55;">
      [병원명 / 문의처]
    </div>
  </div>
</div>
```

---

## Step 4: HTML → PNG 변환 및 전달

### 변환 도구 설치

```bash
pip install playwright --break-system-packages -q && playwright install chromium
```

### 변환 스크립트

```python
import asyncio, glob, os
from playwright.async_api import async_playwright

async def convert_all():
    html_files = sorted(glob.glob("/home/user/card_*.html"))
    async with async_playwright() as p:
        browser = await p.chromium.launch()
        for html_path in html_files:
            page = await browser.new_page(
                viewport={"width": 800, "height": 800},
                device_scale_factor=2
            )
            await page.goto(f"file://{html_path}")
            await page.wait_for_timeout(1000)
            png_path = html_path.replace(".html", ".png")
            await page.screenshot(path=png_path, clip={"x": 0, "y": 0, "width": 800, "height": 800})
            await page.close()
            print(f"✅ {os.path.basename(png_path)} (1600×1600px)")
        await browser.close()

asyncio.run(convert_all())
```

---

## 워크플로우 요약

```
docx 읽기 → 기획안 제시 → 💬 사용자 확인 → HTML 생성 → PNG 변환 → 파일 전달
```

## 품질 체크리스트

- [ ] 모든 카드 정확히 800×800px
- [ ] 스크롤 없이 완전히 보임
- [ ] 한글 폰트 정상 로드
- [ ] 카드 간 디자인 일관성
- [ ] 의료 정보 정확성 유지 (내용 임의 수정 금지)
- [ ] 우하단 장 번호 표시 (N/전체)
- [ ] 최종 출력은 PNG 파일 (1600×1600px)
