FROM python:3.11.1

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

# Example: Set environment variables if needed
# ENV EXAMPLE_VAR=value

# Example: Expose port if your application listens on a specific port
# EXPOSE 8080

# Example: Define startup command
# CMD ["python", "app.py"]
