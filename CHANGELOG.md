# Changelog

Record every rubric, weight or product-file change here so the team can see why
scores shifted between versions.

## [0.1.1] — 2026-10-19
### Changed
- Product files: brand colors and official taglines pulled from Ollyo BAM for
  Tutor LMS, Kirki, Growfund, SP Page Builder and EasyStore. Helix Ultimate uses
  JoomShaper parent colors and Kirki eCommerce uses Kirki colors until they get
  their own BAM entries. Fonts are still TODO.
- Kirki Builder: audience wording aligned with the "No-Code Site Builder" tagline.

## [0.1.0] — 2026-10-19
### Added
- Initial skill: two scores (Communication, Aesthetics), 8.0 pass mark on both.
- Weighted sub-criteria with scoring anchors (`rubrics/`).
- Hard-fail rules H1–H5.
- Brief confirmation flow (infer from design, then confirm).
- "Check with the requester" escalation when Communication < 8.
- Comparison re-reviews within a conversation.
- Draft product files: Tutor LMS, Kirki Builder, Kirki eCommerce, Growfund,
  SP Page Builder, Helix Ultimate, EasyStore (all need brand-owner review;
  brand colors/fonts are TODO).
- `scripts/bundle.sh` single-file bundle for non-Claude tools.
