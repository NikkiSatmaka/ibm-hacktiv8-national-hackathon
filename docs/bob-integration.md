# Bob integration

Each sample's `bob/` directory contains:

- `agent-instructions.md`: instructions pasted into the Bob agent.
- `mcp-config.example.json`: a credential-free connection example. Copy it to an untracked local configuration and replace its placeholders.

Bob instructions govern delegation to Langflow. Prompts under a sample's `prompts/` directory govern components inside the Langflow flow; they should not be pasted into Bob unless a sample explicitly says otherwise.

1. Import and run the required Langflow flows.
2. Enable the flows through the MCP endpoint available in your deployment.
3. Copy the example config locally and replace its URL with the value shown by Langflow.
4. Create the Bob agent and paste `bob/agent-instructions.md`.
5. Confirm Bob can list the expected tools before testing.

Endpoint and authentication details can vary by Langflow/Bob version, so the running instance is authoritative. In Sample 01, Bob delegates to the Meeting Action Assistant and the Langflow component performs the configured Google actions. In Sample 02, Bob delegates note ingestion and retrieval-backed Q&A to the relevant flows.
