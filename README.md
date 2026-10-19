# Ollyo Design Review

An AI skill that reviews design work for Ollyo products and gives each design two
scores out of 10:

1. **Communication** — Does it say the right thing to the right users of this product?
2. **Aesthetics** — Is it well-crafted in hierarchy, composition, typography, color and polish?

A design passes only with **8.0+ on both scores and no hard fails**. Pass or fail,
the review always includes prioritized, specific suggestions for improvement.

**Products covered:** Tutor LMS · Kirki Builder · Kirki eCommerce · Growfund ·
SP Page Builder · Helix Ultimate (and Joomla templates) · EasyStore

---

## How designers use it

1. Paste or upload the design (PNG/JPG) into your AI tool with the skill installed.
2. Say *"Review this design"*. Add context if you have it, e.g. *"Tutor LMS blog banner for the 3.0 launch"*.
3. The AI confirms the brief (product, asset type, goal) if it can't infer it.
4. You get a verdict, both scores with reasons, hard fails, suggestions, and what's working.
5. Fix, paste the new version **in the same conversation**, and say *"Re-review"*.
   You'll see score changes and which suggestions you addressed.

If Communication scores below 8, the review lists questions to take back to whoever
gave you the task. Sometimes the brief is the problem, not the design.

---

## Installation

### Claude Code
```bash
git clone https://github.com/iShowkot/ollyo-design-review ~/.claude/skills/ollyo-design-review
# update later:
git -C ~/.claude/skills/ollyo-design-review pull
```

### Claude.ai / Claude Desktop
1. On GitHub: **Code → Download ZIP**.
2. In Claude: **Settings → Capabilities → Skills → Upload skill**, and choose the ZIP.
3. To update, delete the old skill and upload the new ZIP.

(Menu names may move. Look for "Skills" in Claude's settings.)

### Gemini, Grok, ChatGPT and other tools
These tools don't load skill folders, so use the single-file bundle:

1. Download [`dist/ollyo-design-review.md`](dist/ollyo-design-review.md).
2. Add it as instructions or knowledge:
   - **Gemini:** create a **Gem**, paste or upload the file as its instructions/knowledge.
   - **ChatGPT:** create a **Custom GPT** or **Project** and upload the file.
   - **Grok:** add it to a **Project**, or paste it at the start of a chat.
   - **CLI agents (Gemini CLI, Codex, etc.):** reference the file from the tool's context/instructions file.
3. Paste your design and ask for a review.

To keep the prompt small, bundle a single product: `./scripts/bundle.sh tutor-lms`.

---

## Repository layout

```
SKILL.md                  Core instructions: workflow, scoring rules, verdict
rubrics/
  communication.md        Score 1: sub-criteria, weights, scoring anchors
  aesthetics.md           Score 2: sub-criteria, weights, scoring anchors
  hard-fails.md           Automatic-rejection rules
products/
  _template.md            Copy this to add a product
  tutor-lms.md …          One file per product: users, tone, visuals, asset notes
templates/
  review-output.md        Exact output format
scripts/bundle.sh         Builds dist/ single-file version
dist/                     Generated bundle for non-Claude tools
```

---

## Maintaining the skill

- **Tuning scores:** Edit the weights or anchors in `rubrics/`. Log every change in
  `CHANGELOG.md` so the team knows why scores shifted.
- **Adding a product:** Copy `products/_template.md` to `products/<product-name>.md`
  and fill it in. Add the product to the description in `SKILL.md` and to the list above.
- **Adding a hard fail:** Add a row to `rubrics/hard-fails.md`. Keep it objective and checkable.
- **After any edit:** Run `./scripts/bundle.sh` and commit `dist/` so non-Claude users get the update.

### ⚠️ This repo is public
Brand colors, tone and audience descriptions are fine to include. **Never add** internal
roadmaps, unreleased features, pricing plans before launch, or confidential brand guidelines.

### Product file status
All product files are **drafts written from public information**. Each product's
brand owner should review theirs, especially the `TODO` brand colors and fonts.
