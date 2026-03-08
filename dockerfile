# Use official Python image as base
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Install system dependencies for Makefile and pip packages
RUN apt-get update && \
    apt-get install -y make gcc && \
    rm -rf /var/lib/apt/lists/*

# Copy Makefile and requirements.txt first for caching
COPY Makefile ./
COPY requirements.txt ./

# Install dependencies via Makefile
RUN make install

# Copy the rest of your project
COPY . .

# Default command: run tests using Makefile
CMD ["make", "test"]