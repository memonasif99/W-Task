
# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the static requirements.txt from the repo to the container
COPY requirements.txt /app/requirements.txt

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . /app

# Expose port for the app
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
