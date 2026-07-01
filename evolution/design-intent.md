# Design Intent — harpsichord rev A

- Master CAD: `cad/harpsichord.scad` (sha256: 2ef9a3e26944414691c4b5fc0953f3bfe4abcbcd528e6d0c7bac221495371ec8), a parametric structural-envelope scaffold driven by the symbolic table `docs/parametric-design-table.md` (sha256: 83853a8c5f2d2b8f02766401ec7e4b78e7c191e116759f51e8cf18c87d89ef1e).
- Function: A keyboard-controlled plucked-string instrument. Each key raises a jack whose plectrum plucks a string, then resets quietly as the tongue lets the plectrum pass back under the string; a damper returns with the jack. Register slides select choirs (e.g. 8' and 4'); a buff/lute stop adds damping color. The case + soundboard form the resonating structure carrying the string load.
- Environment: indoor instrument; solid-wood plates and wrestplank move with humidity. String tension is a sustained structural load on case, wrestplank, and soundboard.
- Target qty: 1 (prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

Packet is deliberately non-dimensional — every critical value is
`pending_measurement`; the table records the governing symbolic relationship
and its measurement gate, not a released number.

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Jack lift vs pluck+reset | TBD (J_lift ≥ P_engagement + T_reset) | measured on one-jack mockup | note speaks and resets, no re-pluck/hang | docs/parametric-design-table.md HC-PAR-002 (pending_measurement) |
| Key tail lift | TBD (K_tailLift = f(K_dip, lever ratio)) | action-mule contact test | delivers enough jack lift | HC-PAR-001 (pending_measurement) |
| Register alignment margin | TBD (R_alignment ≥ f(J_clearance, R_slide)) | register-slide mockup | reliable choir on/off, no bind | HC-PAR-004 (pending_measurement) |
| Jack-to-guide clearance | TBD (J_clearance = f(material movement, service)) | guide sample across humidity | free travel without binding | HC-PAR-003 (pending_measurement) |
| Damper contact | TBD (D_damper[n] = f(S_scale[n], release)) | damper mockup + listening | clean string stop, no pitch pull | HC-PAR-005 (pending_measurement) |
| String speaking length | TBD (S_scale[n]) | measured/reviewed scale | pitch + tension load path | HC-PAR-005..007 (pending_measurement) |
| Soundboard/bridge interface | TBD (B_bridge[n]) | reviewed soundboard plan | energy transfer + structure | HC-PAR-007 (pending_measurement) |

## Incidental (free for DFM)

- Case outline styling (bentside curve, cheek/tail shaping), lid, stand, and cosmetic finish on non-mating surfaces; nameboard and rose decoration.

## Must-nots (DFM may never violate)

- Do not convert a symbolic relationship or a `// PLACEHOLDER` value in `cad/harpsichord.scad` into a released dimension without a measured/reviewed authority-register row (risks.md / design.md authority boundary).
- Do not size stringing, bridge, wrestplank, or case from historical examples, images, or prose (design.md).
- Soundboard and case are the string load path: no structural sizing until the load-path review is done (validation.csv VAL-008).
- Register geometry stays a regulated mechanism, never a visual layout (risk-FMEA: register misalignment).

## Material intent

- Preferred: tonewood soundboard, hardwood case/keys, music wire, plectra (delrin/quill class) — all per bom.csv, all class-only / `pending_measurement`.
- Acceptable subs: per sourcing.csv (spec-first; specs pending).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable or dimensioned.
