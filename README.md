# IBM National Hackathon — Sample Projects

Reproducible workshop material for two IBM Bob + Langflow projects. This repository contains flow exports, Bob instructions, Langflow component prompts, safe example configuration, test data, and representative outputs. Docker Compose infrastructure remains in its separate source-of-truth repository.

## Start here

1. Follow [docs/setup.md](docs/setup.md) to start Langflow and import a flow.
2. Read [docs/infrastructure.md](docs/infrastructure.md) for the separate infrastructure repository.
3. Choose a sample:
   - [Sample 01 — Meeting Action Assistant](samples/sample-01/README.md)
   - [Sample 02 — Study/RAG Assistant](samples/sample-02/README.md)
4. Use [docs/bob-integration.md](docs/bob-integration.md) to connect the imported flows to Bob.

## Repository map

- `docs/`: shared setup, infrastructure, and Bob guidance.
- `samples/sample-01/`: Meeting Action Assistant.
- `samples/sample-02/`: Study/RAG Assistant and its five source documents.
- `samples/*-flows-original.zip`: preserved original export bundles.

## Naming convention

- Repository-authored files and directories use lowercase kebab-case.
- Standard integration filenames remain consistent across samples: `agent-instructions.md` and `mcp-config.example.json`.
- Langflow JSON export names retain their UI flow names, including spaces and the `Template`/`Complete` suffixes, so they are easy to recognize during import.
- Original ZIP bundles use a descriptive kebab-case name ending in `-original.zip`.

## Export and secret policy

Complete exports are reference implementations; Template exports are participant exercises. Never commit credentials or local runtime state. Before committing an updated export, check it for embedded keys, tokens, account IDs, and personal addresses. `.env.example` files are intentionally trackable; real `.env` files are ignored.
