# Prefer minimal base images  - use official python runtime base image
FROM python:3.8-slim-buster

# add curl for healthcheck
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container to /app
WORKDIR /app

# Copy source code
COPY . /app

# Install dependencies
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose on specific port 5000
EXPOSE 5000

# Define environment variable for Python to not produce .pyc files
ENV PYTHONDONTWRITEBYTECODE 1

# Run app.py when the container launches
CMD ["python", "app.py"]
