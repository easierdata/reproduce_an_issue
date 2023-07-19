FROM giswqs/segment-geospatial
USER root

WORKDIR /

COPY segment_geospatial.py .

# Change permission of the script to make it readable and executable
RUN chmod 755 /segment_geospatial.py

CMD ["python3", "segment_geospatial.py"]