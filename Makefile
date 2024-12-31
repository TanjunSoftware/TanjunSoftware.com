input-css := ./src/input.css
output-css := ./src/style.css
tailwind-command := npx tailwindcss -i $(input-css) -o $(output-css)

.PHONY: tailwind serve

tailwind:
	$(tailwind-command)

tailwind-watch:
	$(tailwind-command) --watch

serve:
	npx watch-http-server ./src