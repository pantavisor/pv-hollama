# Open WebUI chat frontend for the Pantavisor AI Box.
# The official image needs no GPU: it is the chat UI and OpenAI-API client.
# It talks to the inference engine (pv-ollama) over OpenAI's API.

FROM ghcr.io/open-webui/open-webui:main

# The container keeps the host network namespace (the docker template's
# default for Pantavisor apps), so this is the device's port on the LAN.
EXPOSE 8080

# Chat on the pv-ollama engine of this device: Pantavisor apps share the
# device's host network, so both are localhost from inside.
ENV OPENAI_API_BASE_URL=http://localhost:11434/v1
ENV WEBUI_AUTH=false
