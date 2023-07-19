FROM giswqs/segment-geospatial
LABEL maintainer="jsolly"
USER ${NB_USER}

RUN mkdir -p /home/${NB_USER}/project/outputs
RUN mkdir -p /home/${NB_USER}/project/inputs
WORKDIR /home/${NB_USER}/project

COPY segment_geospatial.py .

CMD ["python3", "segment_geospatial.py"]