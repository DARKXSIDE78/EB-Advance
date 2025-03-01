FROM artemisfowl004/vid-compress

# Update system and install dependencies
RUN apt update && apt install -y ffmpeg

# Set the working directory inside the container
WORKDIR /app

# Copy your project files into the container
COPY . /app

# Install Python dependencies
RUN pip install --upgrade pip  # Upgrade pip
RUN pip install -r requirements.txt  # Install dependencies

# Run your bot
CMD ["python3", "-m main"]
