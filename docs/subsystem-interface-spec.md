<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Subsystem Interface Specification

Status: interface map for L3-candidate review. Interfaces are symbolic and
`pending_measurement`; this document contains no fabrication authority.

## Interface Matrix

| interface_id | from subsystem | to subsystem | exchanged behavior | current authority | required evidence |
| --- | --- | --- | --- | --- | --- |
| HC-IF-KEY-JACK | Keyboard | Jack/action | Key lift becomes jack lift and plectrum motion. | pending_measurement | Action mule with repeatable lift and return observations. |
| HC-IF-JACK-STRING | Jack/plectrum | Stringing | Plectrum releases string and tongue resets below string. | pending_measurement | Stringed coupon and voicing trial. |
| HC-IF-JACK-DAMPER | Jack/action | Damper | Damper stops string after key release. | pending_measurement | Damper contact and release tests. |
| HC-IF-REG-JACK | Register slide | Jack rows | Register position selects or withdraws jack rows. | pending_measurement | Slide mockup with alignment and detent review. |
| HC-IF-BUFF-STRING | Buff/lute stop | Stringing | Stop introduces reversible damping. | pending_measurement | Material/contact test and wear review. |
| HC-IF-STRING-SOUNDBOARD | Stringing | Soundboard/bridge | String load and vibration enter bridge/soundboard system. | pending_measurement | Reviewed stringing plan and structural/acoustic review. |
| HC-IF-SOUNDBOARD-CASE | Soundboard | Case/wrestplank | Soundboard and bridge loads interact with case structure. | pending_measurement | Reviewed drawings or measured template. |
| HC-IF-SERVICE-ACTION | Maintenance access | Action/registers | Builder can voice, regulate, remove, and replace action parts. | concept_only | Service-access walkthrough. |

## Interface Rules

- A subsystem may not be promoted beyond `pending_measurement` if its neighbor
  remains undefined in a way that changes fit, force, motion, or tone.
- Any future CAD must name which interface rows control each feature.
- Any future drawing must separate review geometry from fabrication geometry.
- Register, jack, and key relationships must be tested as a system, not only
  as isolated parts.

## Open Interface Risks

- Key feel may be acceptable in isolation but fail once jack friction and
  plectrum release are added.
- Register selection may disturb jack alignment if slide and guide tolerances
  are not treated as one interface.
- Buff-stop contact may interfere with normal string speaking behavior if it
  is designed after bridge/stringing choices are fixed.
- Service access may be blocked by a visually plausible case layout unless
  regulation routes are specified early.
