FROM python:3

RUN apt-get update -yy && \
    apt-get install -yy \
	alsa-utils \
	portaudio19-dev \
	python-all-dev
	
RUN pip3 install pyaudio && cp /usr/share/sounds/alsa/Front_Center.wav /Front_Center.wav

COPY play.pi /play.pi
#COPY requirements.txt /requirements.txt

CMD ["/bin/sh"]