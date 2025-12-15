# Use official Python image
FROM python:3.14-slim

# Set working directory inside container
WORKDIR /app

# Copy dependency file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY src/ src/
COPY tests/ tests/

# Default command
CMD ["python", "src/app.py"]
