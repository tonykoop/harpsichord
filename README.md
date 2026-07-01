<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Harpsichord

**Status:** L2 V5 build-packet candidate

Private V5 planning packet for a harpsichord: keys raise jacks, jack plectra
pluck strings, register slides select choirs such as 8' and 4', and a buff or
lute stop damps the speaking string for color.

## Concept Boundary

This packet is a design study only. It does not contain fabricated dimensions,
DXF coordinates, string lengths, scale design, bridge layout, tuning plan, jack
geometry, plectrum cuts, register spacing, or case construction details. All
mechanical and acoustic values are `pending_measurement`.

## Core Mechanism

- Keys lift vertical jacks.
- Each jack carries a pivoting tongue and plectrum that plucks a string as the
  key rises.
- Register slides align or withdraw jacks so choirs such as 8' and 4' can be
  selected or combined.
- A buff/lute stop introduces controlled damping near the strings.
- The engineering focus is predictable jack travel, clean plectrum release,
  reliable register motion, damping that does not damage strings, and service
  access for voicing and regulation.

## Packet Map

- `design.md` - mechanism concept, parametric intent, and measurement gates.
- `bom.csv` - subsystem-level parts and test-support classes only.
- `cut-list.csv` - non-dimensional keyboard, action, register, stringing, and
  case workpiece categories; all sizes and counts remain pending measurement.
- `visual-output-register.csv` - V5 authority register; every row is
  `concept_only` or `pending_measurement`.
- `cad/mcp-session-log.md` - QMD and provenance stub; no MCP/CAD session run.
- `decision-record.md` - decisions, open questions, and promotion gates.
- `sourcing.csv`, `validation.csv`, `risks.md`, `drawing-brief.md` - baseline
  shop-packet scaffolds (spec-first, non-dimensional, `pending_measurement`).
- `cad/harpsichord.scad` - parametric structural-envelope scaffold (symbolic
  relationships as formulas, render-only placeholder values); authority
  `pending_measurement`, not fabrication authority.
- `evolution/` - evolution-pipeline Stage 0 intake: master manifest,
  design-intent, and revision register (Gate A not yet run).

## Readiness

Deepened toward L3 (protocols, tolerances, assembly, FMEA in `docs/`) but not
promoted: L3 requires fabrication-authority CAD/DXF and validator evidence, and
this packet is deliberately non-dimensional, so it stays **L2 V5 build-packet
candidate**.

L2 means the repo now names the shop subsystems, workpiece categories,
measurement logs, and authority boundaries needed for a careful prototype
review. It still does not release dimensions, string scale, jack spacing,
plectrum cuts, register geometry, bridge layout, case layout, or tuning targets.
Promotion beyond L2 requires measured or selected stringing assumptions, a
reviewed jack/register mockup, a case and soundboard strategy, and an authority
register for any future visual, CAD, or acoustic artifacts.
