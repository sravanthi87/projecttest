FROM python:3.6

EXPOSE 8080

WORKDIR /app

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app
RUN pip install cryptography
RUN pip install -r requirements.txt
RUN sqlcmd -i dbscript.sql 

# Run app.py when the container launches
COPY app.py /app
CMD python app.py