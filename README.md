# pv-open-webui

Open WebUI chat frontend for Pantavisor AI boxes, packaged as a Pantavisor
app container.

- Serves its chat on the device's own port 8080 (host-network apps).
- Talks to the inference engine of the device over OpenAI's API, at
  `OPENAI_API_BASE_URL` (the pv-ollama container, port 11434).
- Its own chat/document/index state lives in the container's persistent
  volume (`docker--var-app-backend-data`).

Build apps for the device with the stage builder, e.g.:

	pvr build start --project nano-ai-box --platform linux/arm64 \
	  --git-url https://gitlab.com/pantacor/pv-open-webui --git-ref main \
	  --app open-webui
