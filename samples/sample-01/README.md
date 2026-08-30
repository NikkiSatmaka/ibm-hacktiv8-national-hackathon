# Sample 01 — Meeting Action Assistant

## What it does

Bob sends notes to Langflow, which summarizes them, creates a Google Doc, optionally emails participants, and creates an event only when date and time are explicit.

## Requirements

- IBM Bob
- Langflow
- Composio
- Google Docs connection
- Gmail connection
- Google Calendar connection

## Files

- `langflow/`: Template and Complete flow exports plus import notes.
- `prompts/meeting-action-assistant-component.md`: system prompt for the agent component inside Langflow.
- `bob/`: Bob delegation instructions and MCP example.
- `sample-inputs/meeting-notes-example.md`: safe test input using reserved example addresses.
- `expected-outputs/meeting-summary-example.md`: representative output and side effects.

## Setup

1. Start the shared Langflow infrastructure.
2. Import `langflow/Meeting Action Assistant - Template.json` for the exercise or `langflow/Meeting Action Assistant - Complete.json` for reference.
3. Configure Composio credentials.
4. Expose the flow through Langflow MCP.
5. Configure Bob with `bob/agent-instructions.md` and `bob/mcp-config.example.json`. These instructions tell Bob to delegate to the Langflow flow.
6. Test with `sample-inputs/meeting-notes-example.md`.
7. Compare with `expected-outputs/meeting-summary-example.md`.

See the shared [setup guide](../../docs/setup.md). Never commit Google or Composio credentials.

## Instruction layers

- `prompts/meeting-action-assistant-component.md` is the system prompt used inside the Langflow agent component. It defines meeting analysis and Google Docs, Gmail, and Calendar behavior.
- `bob/agent-instructions.md` is the outer Bob agent configuration. It tells Bob when and how to call the Langflow tool.

Keep these files separate: Bob delegates the work, while the Langflow component performs it.

`sample-inputs/meeting-notes-local.md`, when present, is intentionally ignored because it contains local test-account addresses. It is not required for the documented example.
