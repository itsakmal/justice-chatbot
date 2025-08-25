# Use the official Rasa image as a base (pin to your Rasa major version if possible)
FROM rasa/rasa:latest

# Workdir
WORKDIR /app

# Copy project
COPY . .

# (Optional) Ensure training data is under ./data if your files live at repo root
# This won't fail if a file is missing due to `|| true`
RUN mkdir -p data && \
    (mv nlu.yml data/ || true) && \
    (mv stories.yml data/ || true) && \
    (mv rules.yml data/ || true)

# Train at build time
USER root
RUN rasa train

# ❗ Important: Neutralize the base image entrypoint so bash can expand $PORT
ENTRYPOINT []

# Start server; use bash -lc so ${PORT} is expanded at runtime on Render
CMD ["bash","-lc","rasa run -m models --enable-api --cors '*' --debug --port ${PORT:-5005}"]
