FROM python:alpine

ADD ./data /home/data
ADD ./output /home/output
ADD main.py /home

WORKDIR /home

# CMD ["/bin/sh", "-c", "cd /home/output;ls"]

RUN pip install collection
RUN pip install sockets

RUN python main.py
CMD ["python", "main.py"]

CMD ["cat","./output/result.txt"]