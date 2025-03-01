FROM python:3.10-slim
RUN apt update && apt install -y ffmpeg
RUN pip install -r requirements.txt
CMD ["python3", "-m main"]
