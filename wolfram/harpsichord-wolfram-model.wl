(* Harpsichord parametric/symbolic acoustic and pluck-action model.
   Source-only planning model. All defaults are estimates pending measurement,
   not fabrication authority. *)

ClearAll["Global`*"];

modelMetadata = <|
  "instrument" -> "harpsichord",
  "packet" -> "Round 8 Wolfram build-packet model",
  "modelName" -> "plucked string, register scale, and plectrum energy proxy",
  "authority" -> "reference_only source; not measured; not fabrication authority"
|>;

stringFrequency[length_, tension_, linearDensity_] :=
  (1/(2 length)) Sqrt[tension/linearDensity];

choirSpeakingLength(baseLength_, registerScale_] :=
  baseLength registerScale;

plectrumEnergy[plectrumStiffness_, plectrumDeflection_] :=
  (1/2) plectrumStiffness plectrumDeflection^2;

harmonicWeight[harmonicIndex_, pluckPositionRatio_] :=
  Abs[Sin[harmonicIndex Pi pluckPositionRatio]];

harpsichordModel[baseStringLengthEstimate_, registerScaleEstimate_,
   stringTensionEstimate_, linearDensityEstimate_,
   pluckPositionRatioEstimate_, plectrumStiffnessEstimate_,
   plectrumDeflectionEstimate_, harmonicCountEstimate_] :=
  Module[
    {speakingLength, frequency, energy, count, harmonics},
    speakingLength =
      choirSpeakingLength[baseStringLengthEstimate, registerScaleEstimate];
    frequency =
      stringFrequency[speakingLength, stringTensionEstimate,
        linearDensityEstimate];
    energy =
      plectrumEnergy[plectrumStiffnessEstimate,
        plectrumDeflectionEstimate];
    count = Round[harmonicCountEstimate];
    harmonics = Table[
      <|
        "harmonicIndex" -> n,
        "frequencyEstimate" -> n frequency,
        "relativeWeightEstimate" ->
          harmonicWeight[n, pluckPositionRatioEstimate]
      |>,
      {n, count}
    ];
    <|
      "speakingLengthEstimate" -> speakingLength,
      "fundamentalFrequencyEstimate" -> frequency,
      "plectrumEnergyEstimate" -> energy,
      "harmonics" -> harmonics,
      "authority" ->
        "computed from estimate placeholders; pending measurement, not fabrication authority"
    |>
  ];

defaultInputs = <|
  "baseStringLengthEstimate" -> 1.0, (* estimate -- pending measurement, not fabrication authority *)
  "baseStringLengthMinimumEstimate" -> 0.3, (* estimate -- pending measurement, not fabrication authority *)
  "baseStringLengthMaximumEstimate" -> 2.0, (* estimate -- pending measurement, not fabrication authority *)
  "registerScaleEstimate" -> 1.0, (* estimate -- pending measurement, not fabrication authority *)
  "registerScaleMinimumEstimate" -> 0.4, (* estimate -- pending measurement, not fabrication authority *)
  "registerScaleMaximumEstimate" -> 1.2, (* estimate -- pending measurement, not fabrication authority *)
  "stringTensionEstimate" -> 70.0, (* estimate -- pending measurement, not fabrication authority *)
  "stringTensionMinimumEstimate" -> 10.0, (* estimate -- pending measurement, not fabrication authority *)
  "stringTensionMaximumEstimate" -> 180.0, (* estimate -- pending measurement, not fabrication authority *)
  "linearDensityEstimate" -> 0.0015, (* estimate -- pending measurement, not fabrication authority *)
  "linearDensityMinimumEstimate" -> 0.0002, (* estimate -- pending measurement, not fabrication authority *)
  "linearDensityMaximumEstimate" -> 0.008, (* estimate -- pending measurement, not fabrication authority *)
  "pluckPositionRatioEstimate" -> 0.12, (* estimate -- pending measurement, not fabrication authority *)
  "pluckPositionRatioMinimumEstimate" -> 0.02, (* estimate -- pending measurement, not fabrication authority *)
  "pluckPositionRatioMaximumEstimate" -> 0.5, (* estimate -- pending measurement, not fabrication authority *)
  "plectrumStiffnessEstimate" -> 25.0, (* estimate -- pending measurement, not fabrication authority *)
  "plectrumStiffnessMinimumEstimate" -> 1.0, (* estimate -- pending measurement, not fabrication authority *)
  "plectrumStiffnessMaximumEstimate" -> 100.0, (* estimate -- pending measurement, not fabrication authority *)
  "plectrumDeflectionEstimate" -> 0.004, (* estimate -- pending measurement, not fabrication authority *)
  "plectrumDeflectionMinimumEstimate" -> 0.0005, (* estimate -- pending measurement, not fabrication authority *)
  "plectrumDeflectionMaximumEstimate" -> 0.02, (* estimate -- pending measurement, not fabrication authority *)
  "harmonicCountEstimate" -> 8, (* estimate -- pending measurement, not fabrication authority *)
  "harmonicCountMinimumEstimate" -> 1, (* estimate -- pending measurement, not fabrication authority *)
  "harmonicCountMaximumEstimate" -> 16 (* estimate -- pending measurement, not fabrication authority *)
|>;

symbolicModel = <|
  "speakingLengthEstimate" ->
    choirSpeakingLength[baseStringLengthEstimate, registerScaleEstimate],
  "fundamentalFrequencyEstimate" ->
    stringFrequency[
      choirSpeakingLength[baseStringLengthEstimate, registerScaleEstimate],
      stringTensionEstimate, linearDensityEstimate],
  "plectrumEnergyEstimate" ->
    plectrumEnergy[plectrumStiffnessEstimate, plectrumDeflectionEstimate],
  "harmonicWeightEstimate" ->
    harmonicWeight[harmonicIndexEstimate, pluckPositionRatioEstimate]
|>;

harpsichordExplorer =
  Manipulate[
    Module[{model, harmonicRows},
      model =
        harpsichordModel[baseStringLengthEstimate, registerScaleEstimate,
          stringTensionEstimate, linearDensityEstimate,
          pluckPositionRatioEstimate, plectrumStiffnessEstimate,
          plectrumDeflectionEstimate, harmonicCountEstimate];
      harmonicRows = model["harmonics"];
      Column[
        {
          Dataset[KeyDrop[model, "harmonics"]],
          BarChart[
            Lookup[harmonicRows, "relativeWeightEstimate"],
            ChartLabels -> Lookup[harmonicRows, "harmonicIndex"],
            AxesLabel -> {"harmonic", "relative weight estimate"}
          ]
        }
      ]
    ],
    {{baseStringLengthEstimate, defaultInputs["baseStringLengthEstimate"],
      "base string length estimate"},
      defaultInputs["baseStringLengthMinimumEstimate"],
      defaultInputs["baseStringLengthMaximumEstimate"],
      Appearance -> "Labeled"},
    {{registerScaleEstimate, defaultInputs["registerScaleEstimate"],
      "register scale estimate"},
      defaultInputs["registerScaleMinimumEstimate"],
      defaultInputs["registerScaleMaximumEstimate"],
      Appearance -> "Labeled"},
    {{stringTensionEstimate, defaultInputs["stringTensionEstimate"],
      "string tension estimate"},
      defaultInputs["stringTensionMinimumEstimate"],
      defaultInputs["stringTensionMaximumEstimate"],
      Appearance -> "Labeled"},
    {{linearDensityEstimate, defaultInputs["linearDensityEstimate"],
      "linear density estimate"},
      defaultInputs["linearDensityMinimumEstimate"],
      defaultInputs["linearDensityMaximumEstimate"],
      Appearance -> "Labeled"},
    {{pluckPositionRatioEstimate,
      defaultInputs["pluckPositionRatioEstimate"],
      "pluck position ratio estimate"},
      defaultInputs["pluckPositionRatioMinimumEstimate"],
      defaultInputs["pluckPositionRatioMaximumEstimate"],
      Appearance -> "Labeled"},
    {{plectrumStiffnessEstimate,
      defaultInputs["plectrumStiffnessEstimate"],
      "plectrum stiffness estimate"},
      defaultInputs["plectrumStiffnessMinimumEstimate"],
      defaultInputs["plectrumStiffnessMaximumEstimate"],
      Appearance -> "Labeled"},
    {{plectrumDeflectionEstimate,
      defaultInputs["plectrumDeflectionEstimate"],
      "plectrum deflection estimate"},
      defaultInputs["plectrumDeflectionMinimumEstimate"],
      defaultInputs["plectrumDeflectionMaximumEstimate"],
      Appearance -> "Labeled"},
    {{harmonicCountEstimate, defaultInputs["harmonicCountEstimate"],
      "harmonic count estimate"},
      defaultInputs["harmonicCountMinimumEstimate"],
      defaultInputs["harmonicCountMaximumEstimate"],
      Appearance -> "Labeled"},
    SaveDefinitions -> True
  ];

<|
  "metadata" -> modelMetadata,
  "defaults" -> defaultInputs,
  "symbolicModel" -> symbolicModel,
  "explorer" -> harpsichordExplorer
|>
