FROM python:3.9-alpine

# Copy the current directory contents into the container at /docker-python-flask
ADD . /docker-python-flask

# Set the working directory to /docker-python-flask
WORKDIR /docker-python-flask

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]

