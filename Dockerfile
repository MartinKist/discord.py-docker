FROM python:3-slim

# Install git, gcc and ffmpeg
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install gcc -y
RUN apt-get install ffmpeg -y

# clone discord.py v2.0 from github and install it
RUN git clone https://github.com/Rapptz/discord.py.git
RUN pip install setuptools wheel
RUN cd discord.py; python3 setup.py install
