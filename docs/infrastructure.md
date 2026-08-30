# Infrastructure

The Docker Compose deployment lives in a separate repository and remains the single source of truth:

- Local checkout: `../ibm-national-hackathon-infra`
- GitHub: [NikkiSatmaka/ibm-hacktiv8-langflow](https://github.com/NikkiSatmaka/ibm-hacktiv8-langflow)
- Compose definition: `compose.yaml` in that repository

Do not copy the Compose file here; a second copy could drift. Keep `ibm-national-hackathon` (materials) and `ibm-national-hackathon-infra` (runtime) as sibling checkouts. Start, stop, upgrade, environment-variable, port, and volume changes belong in the infrastructure repository.
