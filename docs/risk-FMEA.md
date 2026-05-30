<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Risk FMEA

Status: qualitative FMEA for L3-candidate review. Severity, occurrence, and
detection are qualitative labels, not measured rankings.

| failure mode | effect | cause hypothesis | current controls | next evidence needed |
| --- | --- | --- | --- | --- |
| Jack binds in guide | Note fails or repeats unpredictably. | Guide clearance, humidity movement, or register misalignment not measured. | Keep guide geometry `pending_measurement`; require guide mockup. | Jack guide sample and action mule observations. |
| Plectrum over-plucks | Harsh touch, string wear, broken plectrum, unstable tone. | Engagement and material not tested with selected stringing. | Keep plectrum material/cut pending. | Voicing trials after string plan review. |
| Tongue fails to reset | Re-pluck, missed note, or stuck jack. | Pivot friction or return behavior unknown. | Tongue reset listed as measurement gate. | Tongue/plectrum reset fixture. |
| Damper fails to stop string | Ringing after key release. | Damper contact, material, or jack return not validated. | Damper behavior pending. | Damper contact test with stringed coupon. |
| Register slide misaligns jacks | Choir selection unreliable or action binds. | Slide travel and jack row alignment treated separately. | Register mockup required. | Slide mockup with service access review. |
| Buff stop damages or over-mutes strings | Color stop becomes destructive or unusable. | Contact path and material unknown. | Buff contact pending. | Buff/lute stop coupon and wear review. |
| Stringing overloads case or soundboard | Structural distortion or unsafe tuning behavior. | String scale and load path not reviewed. | No stringing authority in packet. | Structural/acoustic review before bridge/case layout. |
| Wrestplank does not hold tuning | Tuning instability or pin creep. | Material stack and drilling process not validated. | Wrestplank treated as future sample. | Specialist review and sample test. |
| Case blocks regulation access | Instrument cannot be voiced or serviced. | Visual case layout chosen before action access. | Service access is a design variable. | Maintenance walkthrough on mockup or CAD review. |
| CAD appears authoritative too early | Builder cuts unvalidated geometry. | Review drawings not separated from fabrication authority. | Register authority remains concept/pending only. | Update register before any CAD/DXF artifact is accepted. |

## FMEA Use Rules

- Do not assign numeric risk scores until the team chooses a scoring rubric.
- Do not close a failure mode with prose confidence; close it only with
  measured or reviewed evidence.
- Every high-impact failure mode must map to a measurement protocol row before
  L3/build-ready promotion.
