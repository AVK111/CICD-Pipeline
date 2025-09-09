FROM python
WORKDIR /app
COPY . /app
RUN apt update && apt install awscli -y
RUN pip install -r requirements.txt
CMD ["python3", "application.py"]
