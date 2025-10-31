# Use Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy dependency file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy Django project files
COPY . .

# Expose Django default port
EXPOSE 9000

# Run Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:9000"]