# from the official fastapi + uvicorn + gunicord image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

#copy the main app to the image from /app 
COPY ./app /app

#Expose the port 80 for http traffic
EXPOSE 80