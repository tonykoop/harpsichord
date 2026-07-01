<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# CAD Notes

`harpsichord.scad` is a parametric **structural-envelope scaffold** —
authority `pending_measurement`, **not** fabrication authority. See
`../visual-output-register.csv` (HC-CAD-001) and `mcp-session-log.md`.

This packet is deliberately non-dimensional: every leaf number in the `.scad`
is a render-only placeholder (tagged `// PLACEHOLDER`), chosen only so the
case / soundboard / string-band / keyboard / register envelope draws. The
honest, source-traceable content is the set of **symbolic relationships** from
`../docs/parametric-design-table.md` (HC-PAR-001/002/004) encoded as formulas
(`key_tail_lift`, `required_jack_lift`, `register_alignment`).

Mechanism internals (jack body, tongue pivot, plectrum cut, damper, buff stop)
are intentionally **out of scope** — see `../design.md` Concept Boundary.

Render check: `openscad -o /tmp/harpsichord-check.stl harpsichord.scad`
exits 0 (manifold solid). Promote any placeholder to a real value only via a
measured/reviewed row in the authority register and
`../docs/measurement-and-validation-protocol.md`.
