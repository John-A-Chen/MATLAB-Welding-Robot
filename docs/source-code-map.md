# Source Code Map

## Primary orchestrators

- `A2.m`
  - UI modes: free control, sequence, path placement, joystick controller
  - Sequence path uses `RMRCwelding`
  - Includes obstacle/ellipsoid collision checks

- `A230.m`
  - Similar architecture to `A2`
  - Contains `rmrc5` path with DLS-style Jacobian inversion

- `A2J2.m`
  - Lighter variant for focused tests and demos

## Core robot models

- `UR3e.m`
- `KukaTitan.m`
- `NachiMZ04.m`
- `LinearNachiMZ04.m`
- `DobotMagician.m`

## Motion-control experiments

- `RMRC.m`, `RMRC2.m`, `RMRC3.m`, `rmrc4.m`, `rmrc5.m`, `RMRCcircularPath.m`
- `A1mess*.m`, `A2mess*.m`, `guykuka.m`, `kukaColisionGuy.m`

## Sensors/controls crossover

- `VideoServoingLab8.m`
  - Central camera setup
  - Image feature error loop
  - Visual Jacobian + robot Jacobian inversion

## Utility/legacy files

- `.asv` files are autosave snapshots
- `intersectTriangle.m`, `dumbcube.m`, `serialPortTrial.m` are support/prototype artifacts

## Canonical run order

1. `bootstrap_paths`
2. `start_welding_demo('A2')`
3. Optional variants: `A230`, `A2J2`
