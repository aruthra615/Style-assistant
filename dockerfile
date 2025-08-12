# Use an official Python runtime
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements first (better caching)
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app
COPY . .

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
