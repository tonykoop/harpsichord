<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Measurement And Validation Protocol

Status: L3-candidate evidence plan. This document defines the measurements
needed before any estimate can become fabrication authority. It contains no
measured dimensions, string data, tuning values, CAD coordinates, or cut-ready
numbers.

## Authority Ladder

| authority state | allowed use | evidence required to promote |
| --- | --- | --- |
| `concept_only` | Mechanism discussion and review planning. | None; explicitly not fabrication authority. |
| `pending_measurement` | Engineering question, candidate variable, or prototype requirement. | Measured reference, bench test, reviewed design table, or specialist review. |
| `fabrication` | Future build-controlling authority. | Not present in this repo. Requires traceable measured/reviewed data and an updated visual-output register. |

## Subsystem Measurements

| subsystem | currently pending variable | what must be measured or tested | promotion evidence |
| --- | --- | --- | --- |
| Keyboard scope | `pending_keyboard_scope` | Selected compass, key count, key spacing, balance path, and front guide behavior from a measured exemplar or design target. | Reference log, measured template, or reviewed keyboard design table. |
| Key lever action | `pending_key_lever_ratio` | Relationship between key dip, rear lift, balance point, and jack lift using a non-stringed action mule. | Action-mule measurements and repeatability notes. |
| Jack guidance | `pending_jack_clearance` | Jack movement through lower and upper guides under dry motion and return conditions. | Guide mockup test log with bind/no-bind observations and service notes. |
| Tongue reset | `pending_tongue_reset_behavior` | Tongue pivot, return, and plectrum pass-under behavior after a pluck simulation. | Bench test video/log and accepted reset criteria. |
| Plectrum voicing | `pending_plectrum_material` | Candidate material, cut direction, stiffness, wear, and replacement workflow. | Voicing trial notes; not tone authority until string tests exist. |
| Register slide | `pending_register_slide_alignment` | Slide travel, jack-row alignment, stop selection, coupling, and detent/lock behavior. | Register mockup log and service-access review. |
| Stringing | `pending_string_scale` | Speaking length family, wire material, gauge family, tension class, hitch/tuning hardware, and safety boundaries. | Measured exemplar, stringing design table, and structural review. |
| Soundboard/bridge | `pending_soundboard_strategy` | Soundboard material system, bridge layout, rib/brace concept, and load path. | Reviewed acoustic/structural plan before any bridge location is promoted. |
| Buff/lute stop | `pending_buff_contact` | Contact material, travel path, engagement consistency, reversibility, and string wear. | Stop mockup test log and maintenance notes. |
| Case/wrestplank | `pending_case_structure` | Case joinery, wrestplank support, tuning-pin holding strategy, and service access. | Structural review and measured/reviewed drawings. |
| Regulation access | `pending_service_clearance` | Whether jacks, plectra, dampers, registers, and stop components can be reached and adjusted. | Maintenance walkthrough and access checklist. |

## Validation Sequence

1. Select a reference basis or original design target without assigning build
   dimensions in prose.
2. Build a non-sounding key/jack/register action mule from pending-measurement
   variables only.
3. Test jack lift, tongue reset, plectrum pass-under, damper return, and
   register slide alignment before adding strings.
4. Review stringing and soundboard load paths before any acoustic claims.
5. Add a visual-output register row for every future CAD, drawing, template,
   or generated view before it is used for review.
6. Promote rows only when evidence exists; otherwise keep them
   `pending_measurement`.

## Explicit Non-Claims

This protocol does not define keyboard dimensions, jack dimensions, plectrum
cuts, register spacing, string scale, bridge curves, soundboard thickness,
case dimensions, tuning values, or acoustic output. Those remain blockers for
future L3 validation.
