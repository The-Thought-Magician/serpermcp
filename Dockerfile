# Cooked up via https://smithery.ai — peep the docs if you need the lore: https://smithery.ai/docs/build/project-config
# syntax=docker/dockerfile:1.4
FROM python:3.11-slim

# Parking the app in /app because that's the hangout spot.
WORKDIR /app

# Drop in the manifest and source so the container has the full fit.
COPY pyproject.toml poetry.lock* ./
COPY src ./src
COPY README.md ./

# Grab the build tooling real quick, then ghost the cache to stay lean.
RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential && \
    rm -rf /var/lib/apt/lists/*

# Install the Python goodies straight from the project, no crumbs left.
RUN pip install --no-cache-dir .

# Fire up the MCP server by default so the vibes start instantly.
ENTRYPOINT ["serper-mcp-server"]
