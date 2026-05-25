#!/bin/bash
AGENT_SKILLS_DIR="$HOME/.agents/skills"
PROJECT_SKILLS_DIR="$(pwd)/skills"

mkdir -p "$AGENT_SKILLS_DIR"

for skill_dir in "$PROJECT_SKILLS_DIR"/*; do
    if [ -d "$skill_dir" ]; then
        skill_name=$(basename "$skill_dir")
        echo "Linking skill: $skill_name"
        rm -rf "$AGENT_SKILLS_DIR/$skill_name"
        ln -s "$skill_dir" "$AGENT_SKILLS_DIR/$skill_name"
    fi
done

echo "Done! Skills linked to $AGENT_SKILLS_DIR"
