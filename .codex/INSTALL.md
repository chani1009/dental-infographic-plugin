# Installing dental-infographic in Codex

## Method 1: Clone to skills directory

```bash
git clone https://github.com/chani1009/dental-infographic-plugin.git ~/.codex/dental-infographic
```

Then symlink the skills:

```bash
mkdir -p ~/.agents/skills
ln -s ~/.codex/dental-infographic/skills ~/.agents/skills/dental-infographic
```

## Method 2: Copy AGENTS.md to your project

```bash
curl -o AGENTS.md https://raw.githubusercontent.com/chani1009/dental-infographic-plugin/main/AGENTS.md
```

## Updating

```bash
cd ~/.codex/dental-infographic && git pull
```
