<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Drawing Brief

Scope for any future dimensioned drawing of the harpsichord. This packet is
deliberately non-dimensional (concept-only / `pending_measurement`), so **no
dimensioned DXF/SVG exists yet** and none may be produced until the measurement
gates in `validation.csv` and the authority register are satisfied.

## What a future drawing set must show (once measured)

- **Action side view** — key lever, jack guide path, jack lift, plectrum
  engagement, tongue reset margin, damper contact. Must cite measured rows for
  every dimension (HC-PAR-001/002 relationships in
  `docs/parametric-design-table.md`).
- **Register plan** — 8'/4' jack rows and register-slide travel with alignment
  margin (HC-PAR-004). Slide spacing pending measurement.
- **Stringing / bridge layout** — speaking-length policy `S_scale[n]`, bridge
  curve `B_bridge[n]`, hitch/tuning-pin field. Blocked until a stringing
  authority is selected.
- **Case / wrestplank envelope** — structural load path and service-access
  volume `V_service`. Blocked until structural review.

## Current CAD artifact

`cad/harpsichord.scad` is a **parametric structural-envelope scaffold** only:
it encodes the documented symbolic relationships as formulas and uses
render-only placeholder leaf values (clearly flagged, not authority). It is the
seed for a future drawing set, not a fabrication drawing.

## Drawing rules

- Every dimension on any released drawing must trace to a measured or reviewed
  authority-register row.
- Keep symbolic relationships (lift ≥ engagement + reset, register alignment)
  formula-driven; never hand-place from a lossy export.
- Treat historical harpsichords, photos, and diagrams as reference-only.
