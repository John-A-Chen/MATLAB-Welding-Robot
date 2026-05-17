# MATLAB Welding Robot

A dual-robot industrial welding simulation archive built in MATLAB for **41013 Industrial Robotics**, then reused for **41014 Sensors and Controls for Mechatronic Systems**.

Repository (current/legacy name): `AT2ChrisGuyJohn`  
Planned display name: **MATLAB Welding Robot**

## What this project demonstrates

- Coordinated simulation of two industrial robot arms in one workspace
- Inverse kinematics waypoint solving (`ikcon`)
- Resolved Motion Rate Control (RMRC) trajectory tracking
- Damped least squares Jacobian inversion near low manipulability
- Manual joint UI control, sequence mode, path placement, and E-stop flows
- Obstacle/collision approximation using ellipsoid tests on transformed link points
- Visual-servoing study scripts for sensors-and-controls crossover

## Quick Start

1. Open MATLAB.
2. Set current folder to this repository root.
3. Run:

```matlab
bootstrap_paths
start_welding_demo('A2')
```

Alternative demo modes:

```matlab
start_welding_demo('A230')
start_welding_demo('A2J2')
```

## Canonical Entry Files

- `A2.m` - Main dual-robot orchestrator with UI modes and RMRC welding sequence
- `A230.m` - Variant orchestrator with alternative RMRC/DLS tuning path
- `A2J2.m` - Lightweight variant used for simplified testing/demos
- `VideoServoingLab8.m` - Image-based visual-servoing exercise (41014 context)

## Robot Model Files

- `UR3e.m`
- `KukaTitan.m`
- `NachiMZ04.m`
- `LinearNachiMZ04.m`
- `DobotMagician.m`

## Dependencies

This repository assumes a MATLAB robotics teaching environment. Typical requirements:

- MATLAB with graphics + UI support
- Robotics toolbox utilities used by this codebase (`SerialLink`, `Link`, `ikcon`, `jacob0`, `lspb`, `rpy2r`, `transl`)
- Helper utilities/classes referenced by scripts (for example `RobotBaseClass`, `PlaceObject`)
- Joystick toolbox support for `vrjoystick` controller mode

If your environment is missing any helper classes from the course/lab template, see `docs/dependencies-and-setup.md`.

## Repository Layout (Current)

This archive intentionally preserves the original flat script layout for compatibility with old coursework environments. A cleaned structure and migration plan is documented here:

- `docs/repo-structure-plan.md`
- `docs/source-code-map.md`

## Videos

- 41013 final video: https://youtu.be/RnitCm5TBhw
- Team welding video: https://youtu.be/qjHxWVd3D6w
- 41014 hand-eye / visual-servoing video: https://youtu.be/nlIlINuIPB4

Transcript/caption extraction notes are in `docs/video-notes.md`.

## Safety + Scope Note

This repository is for simulation/coursework demonstration and documentation. It is not a certified production welding control stack.
