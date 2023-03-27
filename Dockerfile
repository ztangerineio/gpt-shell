FROM python:3.11

WORKDIR /usr/src/app

# GPT uses the "sudo" command for all the privileged commands.
# It can install it on its own if you ask, but it's a waste of time.
RUN apt-get update && apt-get -y install sudo

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py ./

CMD [ "python", "./main.py" ]