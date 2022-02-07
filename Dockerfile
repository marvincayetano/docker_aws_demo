FROM python:3
# SET THE DIRECTORY IN DOCKER CONTAINER
WORKDIR /usr/src/app

# COPY THE FILES TO THE CONTAINER
COPY . .

# NO SUCH FILE ERROR
RUN pip freeze > requirements.txt .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# EXPOSE SO THAT WE CAN ACCESS IT
EXPOSE 5000

# RUN
CMD ["python", "./app.py"]