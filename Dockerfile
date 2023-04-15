FROM python:3.7.3

WORKDIR /app
COPY app.py . 
COPY requirements.txt .
COPY /model_data ./model_data 
RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
CMD ["python", "app.py"]

