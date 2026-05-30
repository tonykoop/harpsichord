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

## Authority Notes

- No fabricated dimensions, DXF coordinates, string scale, bridge layout, jack
  geometry, plectrum cuts, register spacing, case layout, tuning values, or
  acoustic response data were created.
- All future CAD, drawings, templates, stringing tables, stop linkages, and
  voicing notes must trace to measured references, reviewed design tables, or
  explicit prototype tests before promotion beyond L2.
