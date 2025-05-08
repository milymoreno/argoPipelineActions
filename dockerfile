FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .

# Create a non-root user and switch to it
RUN useradd -m appuser
USER appuser

CMD ["python", "app.py"]
