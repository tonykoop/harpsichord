<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Risks

Top-level risk summary for the harpsichord L2 planning packet. The full
qualitative analysis lives in `docs/risk-FMEA.md`; this file is the baseline
packet summary. No numeric risk scores are assigned — severity/occurrence/
detection remain qualitative until a scoring rubric is chosen.

## Mechanism / action

- **Jack binds in guide** — guide clearance, humidity movement, or register
  misalignment not measured. Control: keep guide geometry `pending_measurement`;
  require a guide/action-mule mockup.
- **Plectrum over-plucks** — harsh touch, string wear, breakage. Control: keep
  plectrum material/cut pending; voicing trials after a string plan is reviewed.
- **Tongue fails to reset** — re-pluck, missed note, stuck jack. Control:
  tongue-reset fixture is a measurement gate (validation.csv VAL-003).
- **Damper fails to stop string** — ringing after release. Control: damper
  contact test on a stringed coupon (VAL-004).
- **Register slide misaligns jacks** — unreliable choir selection or binding.
  Control: register-slide mockup with service-access review (VAL-005).
- **Buff/lute stop damages or over-mutes strings** — Control: reversible-contact
  coupon and wear review before claiming a stop layout (VAL-006).

## Structure / stringing

- **Stringing overloads case or soundboard** — structural distortion or unsafe
  tuning. Control: no stringing authority in packet; structural/acoustic review
  required before bridge/case layout (VAL-007, VAL-008).
- **Wrestplank does not hold tuning** — pin creep/instability. Control:
  specialist review and sample tests.

## Process / authority

- **CAD appears authoritative too early** — builder cuts unvalidated geometry.
  Control: the parametric OpenSCAD envelope (`cad/harpsichord.scad`) carries
  `pending_measurement` authority and render-only placeholder values; it is
  **not** fabrication authority. Update the authority register before any
  DXF/SVG or measured geometry is accepted.

## Must-not (carried into evolution/design-intent.md)

- Do not convert a symbolic relationship or placeholder value into a released
  dimension without a measured/reviewed authority-register row.
- Do not size stringing, bridge, or case from historical examples, images, or
  prose (design.md authority boundary).
