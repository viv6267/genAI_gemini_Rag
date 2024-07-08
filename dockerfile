FROM python:3.9

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app.py"]


# command to build the docker image
# docker build -t hello-docker .
# docker run -p 5000:80
# remove image docker 
# docker image rm -f hello-docker
# docker tag viv6267/hello_decoker viv6267/hello_docker  # used for renaming the image name
# docker push viv6267/hello_docker:latest
