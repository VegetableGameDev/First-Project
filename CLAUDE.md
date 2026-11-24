# Project: <GAME NAME> (2D roguelite, Godot 4)

A small 2D roguelite built as a learning project. Prefer simple, readable, working code over clever or generic systems.

## Stack
- Godot <EXACT VERSION, e.g. 4.x.y>. Godot 4 only: no Godot 3 APIs or syntax.
- GDScript only, with static typing (typed variables, parameters, return types).

## Commands
(Adjust the `godot` path for this machine; check flags with `godot --help`.)
- Load the project headless and catch errors: `godot --headless --quit`
- Syntax-check one script: `godot --headless --check-only --script res://path/to/script.gd`
- After ANY code change, run the headless load command and fix errors before saying you're done.

## Structure
- `scenes/` holds scenes, with each script next to the scene it is attached to
- `data/` holds content files (.tres), `assets/` holds art and audio (no code)
- Create new folders only when needed; do not scaffold empty ones.

## Code rules
- Signals up, calls down: children emit signals, parents call methods on children. No `get_parent()` or long node paths.
- Reference nodes with `@export` or unique names (`%Name`), not paths like `$A/B/C`.
- Movement and physics go in `_physics_process`.
- No magic numbers: tunable values are `@export` variables.
- Any randomness must use a single seeded `RandomNumberGenerator` (never call global `randi()`/`randf()` in gameplay code).
- Do not add autoloads, base classes, or generic systems unless I ask.

## Scenes and the editor
- I build scenes in the Godot editor. Do not hand-write or heavily edit `.tscn` files (trivial changes like a script path are fine). Never touch `.godot/`.
- When a script needs a scene setup, tell me the node tree, node types, signals to connect, and `@export` fields to fill in.
- Tell me which files you changed so I can reload them in the editor.

## Workflow
- For changes touching more than one file, give a short plan first and wait for my OK.
- One feature per task. Build the smallest working version first.
- Do not commit unless I ask.
- If you are unsure a Godot 4 API exists or how it behaves, say so instead of guessing.
- I'm new to Godot: briefly explain any Godot concept the first time you use it.

## Gotchas log
(Add a line here each time Claude gets something wrong, so it isn't repeated.)
-
