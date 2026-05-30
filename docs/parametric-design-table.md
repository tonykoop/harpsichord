<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Parametric Design Table

Status: symbolic relationship table only. This document intentionally uses
variables, ratios, and dependencies instead of absolute dimensions or tuning
values. Every variable is `pending_measurement` unless explicitly marked
`concept_only`.

## Symbols

| symbol | meaning | authority |
| --- | --- | --- |
| `K_scope` | Selected keyboard scope or compass policy. | pending_measurement |
| `K_spacing` | Key spacing variable. | pending_measurement |
| `K_dip` | Key dip variable. | pending_measurement |
| `K_tailLift` | Key-tail lift delivered to jack. | pending_measurement |
| `J_lift` | Jack lift needed for pluck and reset. | pending_measurement |
| `J_clearance` | Jack-to-guide clearance variable. | pending_measurement |
| `P_engagement` | Plectrum engagement with string. | pending_measurement |
| `T_reset` | Tongue reset margin after pluck. | pending_measurement |
| `R_slide` | Register slide travel variable. | pending_measurement |
| `R_alignment` | Register-to-jack-row alignment margin. | pending_measurement |
| `S_scale[n]` | Speaking length policy for string/course `n`. | pending_measurement |
| `B_bridge[n]` | Bridge curve/location variable for string/course `n`. | pending_measurement |
| `D_damper[n]` | Damper contact variable for string/course `n`. | pending_measurement |
| `F_buff[n]` | Buff-stop contact variable for string/course `n`. | pending_measurement |
| `C_case` | Case structural envelope variable. | pending_measurement |
| `V_service` | Service-access volume/path variable. | pending_measurement |

## Symbolic Relationships

| relationship_id | expression | interpretation | authority |
| --- | --- | --- | --- |
| HC-PAR-001 | `K_tailLift = f(K_dip, key_lever_ratio)` | Key geometry must create enough jack lift after a lever ratio is selected. | pending_measurement |
| HC-PAR-002 | `J_lift >= P_engagement + T_reset` | Jack lift must cover pluck engagement and reset margin. | pending_measurement |
| HC-PAR-003 | `J_clearance = f(material_movement, guide_strategy, service_target)` | Guide clearance depends on material movement and regulation access. | pending_measurement |
| HC-PAR-004 | `R_alignment >= f(J_clearance, R_slide, register_state)` | Register alignment must include jack clearance and slide state. | pending_measurement |
| HC-PAR-005 | `D_damper[n] = f(S_scale[n], release_behavior[n])` | Damper contact depends on the selected string scale and release behavior. | pending_measurement |
| HC-PAR-006 | `F_buff[n] = f(S_scale[n], color_target, wear_limit)` | Buff-stop contact depends on string plan, desired color, and wear boundary. | pending_measurement |
| HC-PAR-007 | `B_bridge[n] = f(S_scale[n], soundboard_strategy, case_envelope)` | Bridge layout must follow string scale, soundboard plan, and case envelope. | pending_measurement |
| HC-PAR-008 | `C_case = f(string_load_path, soundboard_support, access_requirements)` | Case structure cannot be fixed before load path and service access are reviewed. | pending_measurement |
| HC-PAR-009 | `V_service >= f(jack_removal, plectrum_voicing, damper_adjustment, register_service)` | Service access must cover regulation tasks. | pending_measurement |

## Promotion Rule

An expression may guide review, but it does not authorize fabrication. To
promote any symbol or relationship, add a measured or reviewed source row to
the authority register and update the relevant protocol section.
