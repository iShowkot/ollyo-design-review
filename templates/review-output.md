# Review output template

Use this structure exactly. Replace the placeholders. Omit sections marked
"only if" when their condition is not met.

```markdown
## Design Review: <Product> · <Asset type> · <Goal>

### Verdict: ✅ APPROVED | ❌ REJECTED   (Communication X.X · Aesthetics X.X)

### 🚫 Hard fails
None.   ← or a list: "**H1 Unreadable text** — subheadline on the gradient is ~2:1. Darken the bottom of the gradient or set the text to white."

### 1. Communication — X.X / 10  ✅|❌
| Criterion | Score | Why |
|---|---|---|
| Message clarity | x.x / 3 | … |
| Audience fit | x.x / 2 | … |
| Goal alignment | x.x / 2 | … |
| Brand recognition | x.x / 1.5 | … |
| CTA / next step | x.x / 1.5 | … (or "N/A — weight moved to clarity") |

### 2. Aesthetics — X.X / 10  ✅|❌
| Criterion | Score | Why |
|---|---|---|
| Visual hierarchy | x.x / 2.5 | … |
| Composition & layout | x.x / 2 | … |
| Typography | x.x / 2 | … |
| Color | x.x / 2 | … |
| Polish & craft | x.x / 1.5 | … |

### How to make it better
1. **[High]** <Concrete change> → +x.x <criterion>
2. **[Med]** …
3. **[Low]** …

### What's working
- …
- …

### 🤝 Check with the requester   ← only if Communication < 8.0
Communication scored X.X. Part of this may need input from whoever gave the task
(product designer, developer, PM, marketing). Questions to bring them:
- "…"
- "…"
```

## Re-review variant (only if a previous review is in the conversation)

Replace the score columns with `old → new`, and add this section after the verdict:

```markdown
### Progress since last review
| # | Previous suggestion | Status |
|---|---|---|
| 1 | Swap stock photo for instructor scene | ✅ Addressed |
| 2 | Shorten subtext to one line | ◐ Partly — still two lines on mobile |
| 3 | Increase CTA contrast | ❌ Not yet |
```
