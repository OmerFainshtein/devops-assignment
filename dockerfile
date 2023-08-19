# Use an official Python runtime as the base image
FROM python:3.9

# Install python3-pip
RUN apt-get update && apt-get install -y python3-pip

# Set the working directory to /app
WORKDIR /app

# Copy requirements file to the working directory
COPY requirements.txt .

# Install any needed dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Install pytest and run tests
RUN pip install pytest
RUN pip install --no-cache-dir pytest requests aiofiles
RUN pytest

# Run the command to start the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
