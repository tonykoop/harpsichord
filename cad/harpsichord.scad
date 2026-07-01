// Harpsichord — parametric STRUCTURAL-ENVELOPE scaffold (concept-only packet).
//
// Authority: pending_measurement. NOT fabrication authority.
// ---------------------------------------------------------------------------
// HONESTY BOUNDARY (read before using any value here):
//   This packet is deliberately NON-DIMENSIONAL. design.md, bom.csv,
//   cut-list.csv, docs/parametric-design-table.md and docs/tolerance-and-fit-
//   analysis.md release NO absolute dimensions — every value is
//   `pending_measurement`. Therefore EVERY numeric leaf value below is a
//   RENDER-ONLY PLACEHOLDER chosen only so the envelope draws; NONE is a
//   design, stringing, tuning, or fabrication authority. Placeholders are
//   tagged `// PLACEHOLDER`.
//   The DOCUMENTED content this file honestly encodes is the set of SYMBOLIC
//   RELATIONSHIPS from docs/parametric-design-table.md (HC-PAR-00x) and the
//   subsystem envelope layout — expressed as formulas, not baked values.
//   Mechanism detail (jack internals, tongue pivot, plectrum cut, damper) is
//   intentionally OUT OF SCOPE — see design.md "Concept Boundary".
//   Promote a placeholder to a real value only via a measured/reviewed row in
//   visual-output-register.csv + docs/measurement-and-validation-protocol.md.
// ---------------------------------------------------------------------------
// Units: millimeters.

/* [Case envelope — PLACEHOLDER extents, single-manual concept] */
case_length_mm     = 2000;  // PLACEHOLDER spine length; no released case size
case_width_mm      = 900;   // PLACEHOLDER cheek-to-spine width
case_depth_mm      = 250;   // PLACEHOLDER case wall height
wall_thk_mm        = 15;    // PLACEHOLDER case wall thickness
tail_width_mm      = 200;   // PLACEHOLDER tail (narrow end) width -> bentside taper

/* [Keyboard envelope — HC-PAR-001, all PLACEHOLDER] */
key_count          = 61;    // PLACEHOLDER compass (K_scope pending_measurement)
key_spacing_mm     = 16.0;  // PLACEHOLDER octave/spacing (K_spacing pending)
key_dip_mm         = 8.0;   // PLACEHOLDER K_dip (pending_measurement)
key_lever_ratio    = 1.0;   // PLACEHOLDER lever ratio (K_tailLift = f(K_dip,ratio))
keyboard_depth_mm  = 300;   // PLACEHOLDER keyboard well depth

/* [Action / jack-register envelope — HC-PAR-002..004, all PLACEHOLDER] */
choir_count        = 2;     // PLACEHOLDER 8' + 4' registers
plectrum_engage_mm = 1.5;   // PLACEHOLDER P_engagement (pending_measurement)
tongue_reset_mm    = 1.0;   // PLACEHOLDER T_reset margin (pending_measurement)
jack_clearance_mm  = 0.3;   // PLACEHOLDER J_clearance (pending_measurement)
register_slide_mm  = 6.0;   // PLACEHOLDER R_slide travel (pending_measurement)
jack_row_pitch_mm  = 12.0;  // PLACEHOLDER spacing between choir jack rows

/* [Soundboard / string band envelope — HC-PAR-005..007, all PLACEHOLDER] */
soundboard_thk_mm  = 3.0;   // PLACEHOLDER soundboard thickness (pending)
bridge_height_mm   = 12.0;  // PLACEHOLDER bridge height (B_bridge pending)
string_band_frac   = 0.85;  // PLACEHOLDER string-band as fraction of case length

// ---------------------------------------------------------------------------
// Derived geometry — DOCUMENTED symbolic relationships as formulas
// (docs/parametric-design-table.md). These are the honest, source-traceable
// part of this model; the leaf inputs above are placeholders.
// ---------------------------------------------------------------------------

// HC-PAR-001: key tail lift delivered to the jack.
function key_tail_lift(dip, ratio) = dip * ratio;
K_tailLift = key_tail_lift(key_dip_mm, key_lever_ratio);

// HC-PAR-002: jack lift must cover pluck engagement + reset margin.
function required_jack_lift(engage, reset) = engage + reset;   // J_lift >= ...
J_lift = required_jack_lift(plectrum_engage_mm, tongue_reset_mm);

// HC-PAR-004: register alignment margin includes jack clearance + slide state.
function register_alignment(clearance, slide) = clearance + slide;
R_alignment = register_alignment(jack_clearance_mm, register_slide_mm);

keyboard_width_mm = key_count * key_spacing_mm;   // spans compass * spacing
string_band_len_mm = case_length_mm * string_band_frac;

// Assertion echoes the governing inequality so `openscad` doubles as a check.
lift_ok = (K_tailLift >= J_lift);

// ---------------------------------------------------------------------------
// Envelope modules (structural volumes only; no mechanism internals)
// ---------------------------------------------------------------------------

module case_shell() {
  // Wing/harp plan approximated by a tapered prism (spine straight, bentside
  // taper to the tail). PLACEHOLDER outline; real bentside curve pending.
  difference() {
    linear_extrude(height = case_depth_mm)
      polygon(points = [
        [0, 0], [case_length_mm, 0],
        [case_length_mm, tail_width_mm], [0, case_width_mm]
      ]);
    translate([wall_thk_mm, wall_thk_mm, wall_thk_mm])
      linear_extrude(height = case_depth_mm)
        polygon(points = [
          [0, 0], [case_length_mm - 2*wall_thk_mm, 0],
          [case_length_mm - 2*wall_thk_mm, tail_width_mm - 2*wall_thk_mm],
          [0, case_width_mm - 2*wall_thk_mm]
        ]);
  }
}

module soundboard() {
  // Thin plate over the rear of the case (structural envelope, not braced).
  translate([case_length_mm*0.25, wall_thk_mm, case_depth_mm - soundboard_thk_mm])
    cube([case_length_mm*0.7, case_width_mm*0.6, soundboard_thk_mm]);
}

module string_band() {
  // Speaking-length band from wrestplank to hitchrail (envelope only).
  translate([case_length_mm*0.08, case_width_mm*0.15, case_depth_mm - bridge_height_mm])
    cube([string_band_len_mm, case_width_mm*0.5, bridge_height_mm]);
}

module keyboard_well() {
  // Keyboard footprint at the front (nameboard end).
  translate([case_length_mm*0.05, case_width_mm - keyboard_depth_mm - wall_thk_mm, wall_thk_mm])
    cube([keyboard_width_mm, keyboard_depth_mm, key_dip_mm + 20]);  // +20 PLACEHOLDER key stack
}

module register_rail_envelope() {
  // choir_count jack rows at jack_row_pitch spacing, above the keyboard.
  for (c = [0 : choir_count-1])
    translate([case_length_mm*0.06, case_width_mm - keyboard_depth_mm + c*jack_row_pitch_mm,
               wall_thk_mm + key_dip_mm + 20])
      cube([keyboard_width_mm, register_slide_mm + jack_clearance_mm, jack_row_pitch_mm*0.6]);
}

module harpsichord_assembly() {
  case_shell();
  soundboard();
  string_band();
  keyboard_well();
  register_rail_envelope();
}

harpsichord_assembly();

echo(str("HC-PAR-001 K_tailLift_mm=", K_tailLift));
echo(str("HC-PAR-002 J_lift_min_mm=", J_lift));
echo(str("HC-PAR-004 R_alignment_mm=", R_alignment));
echo(str("keyboard_width_mm=", keyboard_width_mm));
echo(str("lift_margin_ok(placeholder)=", lift_ok));
echo("AUTHORITY=pending_measurement; all leaf values are render-only placeholders.");
