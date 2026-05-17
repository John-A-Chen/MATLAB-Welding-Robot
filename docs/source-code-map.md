# Source Code Map

## Primary orchestrators

- `src/controllers/A2.m`
  - UI modes: free control, sequence, path placement, joystick controller
  - Sequence path uses `RMRCwelding`
  - Includes obstacle/ellipsoid collision checks

- `src/controllers/A230.m`
  - Similar architecture to `A2`
  - Contains `rmrc5` path with DLS-style Jacobian inversion

- `src/controllers/A2J2.m`
  - Lighter variant for focused tests and demos

## Core robot models

- `src/models/UR3e.m`
- `src/models/KukaTitan.m`
- `src/models/NachiMZ04.m`
- `src/models/LinearNachiMZ04.m`
- `src/models/DobotMagician.m`

## Motion-control experiments

- Active: `src/experiments/RMRC.m`, `src/experiments/RMRC2.m`, `src/experiments/RMRC3.m`, `src/experiments/rmrc4.m`, `src/experiments/rmrc5.m`, `src/experiments/RMRCcircularPath.m`
- Legacy: `archive/legacy-scripts/A1mess*.m`, `archive/legacy-scripts/A2mess*.m`, `archive/legacy-scripts/guykuka.m`, `archive/legacy-scripts/kukaColisionGuy.m`

## Sensors/controls crossover

- `src/experiments/VideoServoingLab8.m`
  - Central camera setup
  - Image feature error loop
  - Visual Jacobian + robot Jacobian inversion

## Utility/legacy files

- `.asv` files are in `archive/autosave/`
- Utility scripts are in `src/utils/`

## Canonical run order

1. `bootstrap_paths`
2. `start_welding_demo('A2')`
3. Optional variants: `A230`, `A2J2`
