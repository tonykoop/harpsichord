<!-- SPDX-License-Identifier: CC-BY-4.0 -->

# Assembly Sequence

Status: planning sequence only. No dimensions, jigs, or fixtures here are
fabrication authority; every fixture remains `pending_measurement`.

## Recommended Build Order

1. **Reference and target selection**: choose the measured exemplar or original
   design target that will govern future geometry.
2. **Action mule first**: make a non-sounding key/jack/register mockup before
   any full case, stringing, or soundboard work.
3. **Keyboard/action relationship**: test key lever behavior, jack lift,
   tongue reset, damper return, and service access.
4. **Register mockup**: test slide alignment, stop selection, jack row
   stability, and regulation access.
5. **Plectrum and damper trials**: test material handling and repeatability
   after the action path is stable.
6. **Stringing/soundboard review**: only after action behavior is understood,
   select or review string scale, bridge strategy, soundboard support, and
   case load path.
7. **Case structure review**: validate wrestplank, case joinery, lid/stand
   access, and maintenance clearances.
8. **CAD/drawing promotion**: create CAD or drawings only from accepted
   measurements, reviewed references, or symbolic relationships that are still
   marked pending measurement.
9. **Regulation and validation**: document jack regulation, register selection,
   plectrum voicing, damping, tuning stability, and maintenance tasks after a
   physical prototype exists.

## Required Jigs And Fixtures

| jig/fixture | purpose | authority |
| --- | --- | --- |
| Key lever action mule | Tests key-to-jack transfer without strings. | pending_measurement |
| Jack guide sample | Tests vertical travel, bind risk, and return. | pending_measurement |
| Tongue/plectrum reset fixture | Isolates pivot, plectrum pass-under, and reset behavior. | pending_measurement |
| Register-slide mockup | Tests slide alignment and stop selection independent of full case. | pending_measurement |
| Damper/buff contact coupon | Tests reversible damping and material wear. | pending_measurement |
| Wrestplank sample | Future tuning-pin holding and drilling study. | pending_measurement |
| Service-access mockup | Proves regulation reach before case geometry is fixed. | pending_measurement |

## Assembly Hold Points

- Hold before strings until action mule behavior is documented.
- Hold before soundboard/bridge layout until stringing and structural review
  exist.
- Hold before CAD/DXF release until every build-controlling line has a source
  row in the register.
- Hold before L3/build-ready claims until measured validation data exists.
