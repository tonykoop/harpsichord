<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# MCP Session Log

V5 provenance stub for the harpsichord L2 planning packet.

## Step 0 QMD

| Date | Command | Result | Notes |
| --- | --- | --- | --- |
| 2026-05-30 | `qmd query "harpsichord harpsichord — keys raise jacks whose plectra pluck the strings; multiple registers (8',4'), buff/lute stops, jack rail and register coupling; plucking mechanism is the core"` | unavailable | Command began search/rerank, then Bun/node-llama-cpp emitted segmentation-fault diagnostics and the hung process was stopped. No QMD output was used as fabrication, CAD, dimension, stringing, tuning, or action authority. |

## External Tool Sessions

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| none-2026-05-30 | none | Round 7 handoff and general mechanical concept stated in prompt. | `README.md`, `design.md`, `bom.csv`, `decision-record.md`, `visual-output-register.csv`, `cad/mcp-session-log.md` | l1_concept_packet | concept_only | self_checked | No MCP, CAD, image, audio, Wolfram, acoustic model, or CAM tool generated artifacts. |
| codex-r7-l2-uplift-2026-05-30 | Codex local edit | Existing repo packet and Round 7 L2 uplift request. | `README.md`, `design.md`, `bom.csv`, `cut-list.csv`, `decision-record.md`, `visual-output-register.csv`, `cad/mcp-session-log.md` | l2_planning_uplift | pending_measurement | self_checked | Added non-dimensional subsystem interfaces, workpiece categories, and measurement gates only. |
| codex-r8-wolfram-source-2026-05-30 | Codex local edit | `design.md`; Round 8 Wolfram author contract. | `harpsichord-starter.wl`, `wolfram/harpsichord-wolfram-model.wl`, `visual-output-register.csv`, `cad/mcp-session-log.md` | wolfram_source_authoring | reference_only | self_checked | Source authored by hand. No Wolfram Desktop, Wolfram Cloud, MCP, CAD, rendering, or acoustic-computation session was run; all numeric inputs are estimate placeholders pending measurement, not fabrication authority. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | design.md, bom.csv, cut-list.csv, docs/parametric-design-table.md | bom.csv, cut-list.csv, sourcing.csv, validation.csv, visual-output-register.csv | packet_refresh | fabrication | self_checked | V5 refresh pass; tabular packet data reviewed against design docs. Scaffolded missing baseline files (sourcing.csv, validation.csv, risks.md, drawing-brief.md) as concept-only/pending_measurement; no dimensions invented. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) + OpenSCAD CLI | docs/parametric-design-table.md, design.md | cad/harpsichord.scad, cad/README.md | cad_authoring | pending_measurement | self_checked | Parametric structural-envelope scaffold; HC-PAR symbolic relationships encoded as formulas, all leaf values render-only placeholders (packet is non-dimensional). Mechanism internals out of scope. OpenSCAD render check: pass (openscad -o STL, exit 0). Not fabrication authority. |

## Authority Notes

- No fabricated dimensions, DXF coordinates, string scale, bridge layout, jack
  geometry, plectrum cuts, register spacing, case layout, tuning values, or
  acoustic response data were created.
- All future CAD, drawings, templates, stringing tables, stop linkages, and
  voicing notes must trace to measured references, reviewed design tables, or
  explicit prototype tests before promotion beyond L2.
