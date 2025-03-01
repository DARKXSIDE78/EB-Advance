FROM artemisfowl004/vid-compress
RUN apt update && apt install -y ffmpeg
RUN pip install Pillow psutil hachoir tgcrypto pyrofork motor aiofiles dnspython ffmpeg asyncio flask
WORKDIR /app
COPY . /app
CMD ["python3", "-m main"]
