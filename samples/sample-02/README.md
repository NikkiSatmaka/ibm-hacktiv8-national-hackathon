# Sample 02 — Study/RAG Assistant

This two-stage RAG example uses `Save Study Notes` for ingestion and `Quick Tutor` for retrieval-grounded Q&A. The existing `Study Planner` is preserved as an optional companion flow.

## Contents

- `langflow/`: template and complete ingestion, Q&A, and optional planner exports.
- `bob/`: Study/RAG instructions and safe MCP example.
- `sample-data/`: five Markdown course notes, PDF renderings, conversion helper, and data notes.
- `sample-inputs/`: ingestion, Q&A, and planning examples.
- `expected-outputs/`: grounded and out-of-scope answer examples.
- `prompts/`: original Quick Tutor and Study Planner component prompts.

## Run it

1. Follow the shared [setup guide](../../docs/setup.md).
2. Import `Save Study Notes - Template.json` and `Quick Tutor - Template.json` from `langflow/` (or use their Complete counterparts as references).
3. Configure both with the same embedding/vector-store settings.
4. Ingest the five Markdown files under `sample-data/` once, using `sample-inputs/ingestion-request.md` as a checklist.
5. Configure Bob from `bob/`, then ask the questions in `sample-inputs/tutor-questions.md`.
6. Compare with `expected-outputs/tutor-answer-examples.md`.

The optional planner can be tested with `sample-inputs/study-plan-request.md`.

Never commit provider keys, vector-database credentials, or generated indexes.
