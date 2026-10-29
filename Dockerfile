# Hollama chat frontend for the Pantavisor AI Box.
# Hollama is a tiny browser-based LLM chat app: ~58MB image, ~60MB RAM at
# runtime, with Ollama model management and OpenAI-compatible servers.

FROM ghcr.io/fmaclen/hollama:latest

# The container keeps the host network namespace (the docker template's
# default for Pantavisor apps), so this is the device's port on the LAN.
EXPOSE 4173
