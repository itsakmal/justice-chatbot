# Use the official Rasa image as a base
FROM rasa/rasa:latest

# Set the working directory inside the container
WORKDIR /app

# Copy your bot's files into the container
COPY . .

# Create a 'data' directory and move the essential training files into it
# This is the corrected fix
RUN mkdir data
RUN mv nlu.yml stories.yml ./data

# Give permissions to the user
USER root

# Train the Rasa model when the container is built
RUN rasa train

# Command to run the Rasa server when the container starts
# --cors "*" allows your frontend to talk to this server
CMD ["run", "-m", "/app/models", "--enable-api", "--cors", "*", "--debug", "--port", "$PORT"]
