# Gemini Skills Repository Instructions

This repository is dedicated to storing and managing Gemini CLI skills.

## Workspace Conventions

- **Skill Location:** All skills MUST be placed in the `skills/` directory.
- **Skill Structure:** Each skill MUST follow the standard structure:
  - `skills/<skill-name>/SKILL.md` (required)
  - `skills/<skill-name>/scripts/` (optional)
  - `skills/<skill-name>/references/` (optional)
  - `skills/<skill-name>/assets/` (optional)
- **Naming:** Skill folders should use hyphen-case (e.g., `my-awesome-skill`).

## Workflows

### Creating a New Skill

When asked to create a new skill:
1. Use the `skill-creator` tool if available, or manually create the directory structure.
2. Ensure `SKILL.md` has the required YAML frontmatter (name and description).
3. Follow the progressive disclosure principle: keep `SKILL.md` lean and use `references/` for detailed info.

### Updating a Skill

1. Read the existing `SKILL.md` and associated resources.
2. Apply changes surgically.
3. Validate the skill using `validate_skill.cjs` if available.

