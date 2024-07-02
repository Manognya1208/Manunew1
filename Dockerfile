# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy the requirements.txt file
COPY requirements.txt ./

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]