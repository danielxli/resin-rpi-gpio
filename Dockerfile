FROM resin/rpi-raspbian:wheezy

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install -y python wget build-essential python-dev python-pip

RUN pip install RPi.Gpio

ADD Adafruit_Thermal.py /App/
ADD calibrate.py /App/
ADD forecast.py /App/
ADD gpio_example.py /App/
ADD hello.py /App/
ADD main.py /App/
ADD printertest.py /App/
ADD sudoku-gfx.py /App/
ADD sudoku-txt.py /App/
ADD timetemp.py /App/
ADD twitter.py /App/

CMD ["python", "/App/main.py"]