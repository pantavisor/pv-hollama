# pv-hollama

Hollama chat frontend for Pantavisor AI boxes, packaged as a Pantavisor
app container.

- Minimal LLM chat UI (~58MB image): multi-server chat, sessions, model
  manager that pulls Ollama models directly from the UI.
- Serves on the device's own port 4173 (host-network apps).
- Point it at the device engine in Settings: the pv-ollama container at
  `http://localhost:11434` (their UI lists `ollama` by default). Model
  pulls land in pv-ollama's persistent model store.

Build apps for the device with the stage builder, e.g.:

	pvr build start --project nano-ai-box --platform linux/arm64 \
	  --git-url https://github.com/pantavisor/pv-hollama --git-ref main \
	  --app hollama
