# Repository Structure Plan

This repository currently preserves a flat legacy layout for compatibility with existing scripts.

## Current state

- Root contains canonical scripts, model definitions, experiments, autosaves, media textures, and PLY meshes.
- This reflects how the coursework evolved over time.

## Target structure (non-breaking migration path)

```text
MATLAB-Welding-Robot/
  README.md
  bootstrap_paths.m
  start_welding_demo.m
  docs/
  src/
    controllers/
    models/
    collision/
    ui/
  experiments/
  assets/
    meshes/
    textures/
    photos/
  archive/
    autosave/
    legacy-scripts/
```

## Migration strategy

1. Keep current files in root while docs are introduced.
2. Identify canonical files (`A2`, `A230`, `A2J2`, robot models).
3. Move only duplicate/legacy scripts into `archive/` after entrypoint tests pass.
4. Update file path references for `PlaceObject` and textures before moving PLY/JPG assets.
5. Add regression checklist for demo modes after each move.

## Why not move everything immediately?

Many scripts reference relative files directly. A hard move in one pass risks breaking the assessed demo flows. This staged plan keeps the repo runnable while it gets cleaned up.
