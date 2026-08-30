# Setup

## Start Langflow

Follow the README in the separate infrastructure repository:

```sh
cd ../ibm-national-hackathon-infra
cp .env.example .env
# Set a strong LANGFLOW_SUPERUSER_PASSWORD in .env.
docker compose up -d
```

Open <http://localhost:7860>. See [infrastructure.md](infrastructure.md) for ownership details.

## Import and configure

In Langflow, choose **New Flow → Import**, then select JSON from a sample's `langflow/` directory. Use a `Template` export for the exercise or `Complete` for a reference. For Study/RAG, import Save Study Notes first and Quick Tutor second; Study Planner is optional.

Set provider credentials through Langflow secret fields or local environment variables. The meeting sample also needs connected Google services through Composio. Never put real credentials in this repository.

Follow [bob-integration.md](bob-integration.md), test with the sample's `sample-inputs/`, and compare with `expected-outputs/`. Run `docker compose down` from the infrastructure repository when finished. Consult its README before removing volumes because that deletes local Langflow state.
