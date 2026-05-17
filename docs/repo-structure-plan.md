# Repository Structure Plan

This document records the implemented repository cleanup for MATLAB Welding Robot.

## Implemented structure

```text
MATLAB-Welding-Robot/
  README.md
  bootstrap_paths.m
  start_welding_demo.m
  docs/
    dependencies-and-setup.md
    source-code-map.md
    video-notes.md
    repo-structure-plan.md
  src/
    controllers/
    models/
    experiments/
    utils/
  assets/
    meshes/
    textures/
    photos/
  archive/
    autosave/
    legacy-scripts/
  scripts/
```

## What was sorted

- Canonical controllers moved to `src/controllers/`
- Model classes/scripts moved to `src/models/`
- RMRC and sensing experiments moved to `src/experiments/`
- Utility scripts moved to `src/utils/`
- All PLY assets moved to `assets/meshes/`
- Environment textures moved to `assets/textures/`
- Project photos moved to `assets/photos/`
- Autosaves moved to `archive/autosave/`
- Legacy/duplicate scripts moved to `archive/legacy-scripts/`

## Compatibility notes

- Root launchers are retained for convenience:
  - `bootstrap_paths.m`
  - `start_welding_demo.m`
- `bootstrap_paths` intentionally excludes `archive/` folders from active path loading.
- Canonical controllers were patched for mesh filename case consistency (`environment.ply`, `flange.PLY`, `flange0.PLY`).

## Recommended usage

1. Run `bootstrap_paths`
2. Run `start_welding_demo('A2')`
3. Use `A230` / `A2J2` only when testing variant behavior
