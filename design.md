<!-- SPDX-License-Identifier: CC-BY-4.0 -->
---
instrument: Harpsichord
family: string_keyboard_plucked
packet_mode: v5_l1_concept
authority: concept_only
readiness: L1 concept packet
---

# Harpsichord Design Study

## Design Thesis

This V5 L1 packet frames a harpsichord as a keyboard-controlled plucked-string
system. The central design problem is not a struck action: each key must raise a
jack so a plectrum plucks the string, then returns quietly while the tongue lets
the plectrum pass back beneath the string. Registers, including 8' and 4'
choirs, are treated as selectable systems whose details remain
`pending_measurement`.

The first packet stays non-dimensional. It names subsystems, dependencies, and
evidence gates without inventing scale lengths, string gauges, soundboard
geometry, jack dimensions, or tuning.

## Mechanism

The key action lifts a jack in a guided path. The jack carries a tongue and
plectrum that must engage a string on the upward stroke and reset on the return
without re-plucking loudly or hanging. A damper returns with the jack to stop
the string after key release.

Register slides control which jacks are active. In a future design, an 8'
register and a 4' register may be selected independently or coupled, but this
packet does not define choir count, string scale, compass, or stop linkage.

The buff/lute stop is a damping color mechanism. It needs a reversible way to
touch or mute strings consistently without becoming an accidental tuning or
structural authority.

## Parametric Intent

Future design tables should separate measured values from design choices:

- `keyboard_scope_status`
- `string_scale_status`
- `choir_plan_status`
- `jack_travel_status`
- `plectrum_material_status`
- `tongue_reset_status`
- `register_slide_status`
- `buff_stop_contact_status`
- `damper_behavior_status`
- `soundboard_strategy_status`
- `case_structure_status`

All fields are currently `pending_measurement`. This repo does not infer
dimensions, string tensions, pitch layout, jack spacing, or bridge placement
from historical examples, images, or prose.

## Authority Boundary

- Concept authority: README, design notes, estimated BOM, and decision record.
- Measurement authority: none yet.
- CAD/DXF authority: none yet.
- Stringing authority: none yet.
- Tuning authority: none yet.

Future concept images may describe action layout or visual style, but they must
not become sources for string scale, jack geometry, register spacing, bridge
curves, buff-stop placement, case dimensions, or toolpaths.

## Measurement Gates

Promotion beyond L1 requires:

- A selected historical reference, measured exemplar, or explicit design target
  for keyboard scope and stringing.
- A bench test for jack lift, plectrum release, tongue reset, and damping.
- A register-slide mockup that proves alignment and serviceability.
- A buff-stop test that records contact behavior and reversibility.
- A soundboard and case concept reviewed for structural and acoustic risk.
- A safety and maintenance review for string tension, sharp wire ends, and
  access to regulated action parts.

## Risks

- Jack guidance can bind if register and rail relationships are not measured.
- Plectrum voicing may dominate tone and touch more than the first concept
  predicts.
- Register selection can create alignment errors if it is treated as a visual
  layout rather than a regulated mechanism.
- Buff damping can mute unevenly or interfere with normal speaking length if
  not tested.
- Stringing and soundboard choices can create structural loads that are outside
  the authority of an L1 concept packet.
