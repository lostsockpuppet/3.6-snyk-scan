# Using latest base image  from DockerHub
FROM python:latest

#Creating working directory inside container#
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY lambda_function.py .

CMD ["python", "-c", "import lambda_function; print(lambda_function.lambda_handler({}, None))"]
