# Dependencies and Setup

## MATLAB

Recommended: MATLAB R2021a+ with 3D plotting support.

## Robotics utilities used by this code

The scripts/classes use functions and patterns associated with robotics teaching toolchains:

- `SerialLink`, `Link`
- `ikcon`, `fkine`, `jacob0`
- `lspb`, `rpy2r`, `transl`
- point-cloud/object placement helper usage (`PlaceObject`)
- base robot class inheritance (`RobotBaseClass`)

If these symbols are unresolved in your environment, install or add the corresponding toolbox/course helper files used in your unit.

## Joystick mode

Controller mode uses:

- `vrjoystick`

If unavailable, use UI slider mode instead (`Free Control` path in `A2`/`A230`).

## Path bootstrap

From repository root:

```matlab
bootstrap_paths
```

Then run a demo:

```matlab
start_welding_demo('A2')
```

## Known practical constraints

- Large PLY assets can make first render slow.
- Some files are archived/experimental variants and are not canonical entry points.
- `.asv` files are legacy autosaves retained for historical completeness.
